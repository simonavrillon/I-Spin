function signal = openOTBplus(pathname, filename, ref_exist, nbelectrodes)
%Reads files of type OTB+, extrapolating the information on the signal,
%in turn uses the xml2struct function to read file.xml and allocate them in an easily readable Matlab structure.
% Isn't possible to read OTB files because the internal structure of these
% files is different.

mkdir('tmpopen');
% cd('tempopen');

untar([pathname filename],'tmpopen');
% unzip([PATHNAME FILENAME]);
signals = dir(fullfile('tmpopen','*.sig'));

PowerSupply = 3.3;
abs = readXMLotb(fullfile('.','tmpopen', [signals.name(1:end-4) '.xml']));
Fsample=str2num(abs.Device.Attributes.SampleFrequency);
nChannel=str2num(abs.Device.Attributes.DeviceTotalChannels);
nADBit=str2num(abs.Device.Attributes.ad_bits);

Gains = zeros(1,nChannel);
Adapter = zeros(1,nChannel);
for nChild = 1:length(abs.Device.Channels.Adapter)
    localGain = str2num(abs.Device.Channels.Adapter{nChild}.Attributes.Gain);
    startIndex = str2num(abs.Device.Channels.Adapter{nChild}.Attributes.ChannelStartIndex);
    
    Channel = abs.Device.Channels.Adapter{nChild}.Channel;
    Description = abs.Device.Channels.Adapter{nChild}.Attributes.Description;
    Description = abs.Device.Channels.Adapter{nChild}.Attributes.Description;

    if contains(Description,'bipolar')
        tempad = 1;
    elseif contains(Description,'64')
        tempad = 2;
    elseif contains(Description,'Splitter') 
        tempad = 2;
    else
        tempad = 3;
    end

    for nChan=1:length(Channel)
        if iscell(Channel)
            ChannelAtt = Channel{nChan}.Attributes;
        elseif isstruct(Channel)
            ChannelAtt = Channel(nChan).Attributes;
        end
        idx = str2num(ChannelAtt.Index);
        Gains(startIndex+idx+1) = localGain;
        Adapter(startIndex+idx+1) = tempad;
        Grid{startIndex+idx+1} = ChannelAtt.ID;
        Muscle{startIndex+idx+1} = ChannelAtt.Muscle;
    end
end

h=fopen(fullfile('tmpopen',signals.name),'r');
data=fread(h,[nChannel Inf], 'short'); 
fclose(h);

for nCh=1:nChannel
    data(nCh,:) = data(nCh,:)*PowerSupply/(2^nADBit)*1000/Gains(nCh);
end

signal.data = data(Adapter == 2,:);
signal.auxiliary = data(Adapter == 3,:);

if ~isempty(data(Adapter < 2,:))
    signal.bipolar = data(Adapter < 2,:);
end

nch = 1;
for i = 1:length(Grid)
    if Adapter(i) == 2
        Grid2{nch} = Grid{i};
        Muscle2{nch} = Muscle{i};
        nch = nch + 1;
    end
end
clearvars Grid Muscle
Grid = Grid2;
Muscle = Muscle2;


signal.fsamp=Fsample;
signal.nChan=nChannel;
signal.ngrid = floor(size(signal.data,1)/nbelectrodes);

for i=1:signal.ngrid
    signal.gridname{i} = Grid{(i-1)*nbelectrodes+1};
    signal.muscle{i} = Muscle{(i-1)*nbelectrodes+1};
end

% if the signals were recorded with a feedback generated by OTBiolab+,
% get the target and the path performed by the participant
if ref_exist == 1
    target = dir(fullfile('tmpopen','*.sip'));
    h=fopen(fullfile('tmpopen',target(2).name),'r');
    data1=fread(h,[1 Inf],'float64');
    fclose(h);
    data1 = data1(1:size(data,2));
    signal.path = data1;

    h=fopen(fullfile('tmpopen',target(3).name),'r');
    data2=fread(h,[1 Inf],'float64');
    fclose(h);
    data2 = data2(1:size(data,2));
    signal.target = data2;
end
rmdir('tmpopen','s');
end
