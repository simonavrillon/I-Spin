function [exFactor, iReSIGt, norm, centroid] = getonlineparameters(EMG, EMGmask, MUFilters, fsamp)

EMG(EMGmask > 0,:) = [];
nbextchan = 1500;
exFactor = round(nbextchan/size(EMG,1));
eSIG = extend(EMG,exFactor);
ReSIG = eSIG*eSIG'/length(eSIG);
iReSIGt = pinv(ReSIG);

nMU=1;
for i = 1:size(MUFilters,2)
    PulseTtmp = (MUFilters(:,nMU)'*iReSIGt)*eSIG;
    PulseT = PulseTtmp(1:size(EMG,2));
    PulseT = PulseT .* abs(PulseT);
    [~,spikes] = findpeaks(PulseT, 'MinPeakDistance', round(fsamp*0.02)); % 4b: Peak detection
    if length(spikes)>2
        [L,C] = kmeans(PulseT(spikes)', 2); % 4c: Kmean classification
        [~, idx] = max(C); % Spikes should be in the class with the highest centroid
        peakspikes = spikes(L==idx);
        peaksnoise = setdiff(spikes, peakspikes);
        peakspikes(PulseT(peakspikes)>mean(PulseT(peakspikes))+3*std(PulseT(peakspikes))) = []; % remove the outliers of the pulse train
        norm(i) = mean(maxk(PulseT(peakspikes),10));
        PulseT = PulseT/mean(maxk(PulseT(spikes),10));
        [~,centroid(i,1)] = kmeans(PulseT(peaksnoise)',1);
        [~,centroid(i,2)] = kmeans(PulseT(peakspikes)',1);
        nMU=nMU+1;
    end
end
