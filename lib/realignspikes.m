%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function to realign each discharge time with the maxima of each MU action
% potential (identified over the channel with the highest peak-to-peak
% amplitude)

% Input: 
%   EMG = raw EMG signal
%   EMGmask = flagged EMG channels with artifacts or low signal to noise
%   ratio
%   coordinates = x and y coordinates of each EMG channel over the grid of
%   electrodes
%   Distimeold = previous discharge times for spike trigger identification
%   of MUAP
%   fsamp = sampling frequency
%   win = duration of the window for spike trigger averaging

% Output:
%   Distime = new discharge times of the motor units

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Distime = realignspikes(EMG, EMGmask, coordinates, Distimeold, fsamp, win)

EMG(EMGmask == 1,:) = [];
EMG2 = cell(max(coordinates(:,1)), max(coordinates(:,2)));
% reorganize the EMG data in 2d cells before performing a double differential
% montage for each channel
for i = 1:size(EMG,1)
    EMG2{coordinates(i,1),coordinates(i,2)} = EMG(i,:);
end

% To generate the double differential EMG signals
ch = 1;
for c = 1:size(EMG2,2)
    for r = 1:size(EMG2,1)-2
        if ~isempty(EMG2{r,c}) && ~isempty(EMG2{r+1,c}) && ~isempty(EMG2{r+2,c})
            EMGdiff(ch,:) = (EMG2{r,c} - EMG2{r+1,c}) - (EMG2{r+1,c} - EMG2{r+2,c});
            ch = ch+1;
        end
    end
end

Distime = cell(1,length(Distimeold));
for i = 1:length(Distimeold)
    p2p = zeros(1,size(EMGdiff,1));
    for l = 1:size(EMGdiff,1) 
        temp = cutMUAP(Distimeold{i},round(win*fsamp),EMGdiff(l,:)); % Spike trigger averaging to generate the MUAP over each channel
        p2p(l) = max(mean(temp,1))-min(mean(temp,1)); % P2P amplitude
    end
    [~ , idxEMG] = max(p2p); % Identify the channel with the highest P2P amplitude
    Distime{i} = alignMUAP(Distimeold{i},round(win*fsamp),EMGdiff(idxEMG,:)); % realign each discharge time with the maxima of the MUAP
    clearvars temp
end

end