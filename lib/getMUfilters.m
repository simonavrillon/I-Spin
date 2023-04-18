function MUFilters = getMUfilters(EMG, EMGmask, Distime)

EMG(EMGmask > 0,:) = [];
nbextchan = 1500;
exFactor = round(nbextchan/size(EMG,1));
eSIG = extend(EMG,exFactor);


% Recalculate MUfilters
MUFilters = zeros(size(eSIG,1), length(Distime));
for i = 1:length(Distime)
    MUFilters(:,i) = sum(eSIG(:,Distime{i}),2);
end