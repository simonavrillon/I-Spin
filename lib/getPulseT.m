function [PulseT, Distime, exFactor] = getPulseT(EMG, EMGmask, MUFilters, fsamp)

EMG(EMGmask > 0,:) = [];
nbextchan = 1500;
exFactor = round(nbextchan/size(EMG,1));
eSIG = extend(EMG,exFactor);
ReSIG = eSIG*eSIG'/length(eSIG);
iReSIGt = pinv(ReSIG);

nMU=1;
for i = 1:size(MUFilters,2)
    PulseTtmp = (MUFilters(:,nMU)'*iReSIGt)*eSIG;
    PulseT(nMU,:) = PulseTtmp(1:size(EMG,2));
    PulseT(nMU,:) = PulseT(nMU,:) .* abs(PulseT(nMU,:));
    [~,spikes] = findpeaks(PulseT(nMU,:), 'MinPeakDistance', round(fsamp*0.02)); % 4b: Peak detection
    PulseT(nMU,:) = PulseT(nMU,:)/mean(maxk(PulseT(nMU,spikes),10));
    if length(spikes)>2
        [L,C] = kmeans(PulseT(nMU,spikes)',2); % 4c: Kmean classification
        [~, idx] = max(C); % Spikes should be in the class with the highest centroid
        Distime{nMU} = spikes(L==idx);
        Distime{nMU}(PulseT(nMU,Distime{nMU})>mean(PulseT(nMU,Distime{nMU}))+3*std(PulseT(nMU,Distime{nMU}))) = []; % remove the outliers of the pulse train
        PulseT(nMU,:) = PulseT(nMU,:)/mean(maxk(PulseT(nMU, Distime{nMU}),10)); % normalization of the MU pulse train without the artifacts
        nMU=nMU+1;
    end
end
