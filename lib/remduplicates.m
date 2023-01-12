%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% To remove the duplicates (MUs that share most of their discharge times,
% the threshold is defined in the script main.m)

% Input: 
%   PulseT = Pulse train of each MU
%   distime = discharge times of the motor units 
%   distime2 = discharge times of the motor units realigned with the MUAP
%   maxlag = maximal lag between motor unit spike trains
%   tol = percentage of shared discharge times to define a duplicate

% Output:
%   Pulsenew = Pulse train of non-duplicated MU
%   distimenew = discharge times of non-duplicated MU

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [Pulsenew, distimenew] = remduplicates(PulseT, distime, distime2, maxlag, tol)

f = waitbar(0,'Removing duplicates');

% Generate binary spike trains
firings = zeros(size(PulseT));
for i = 1:size(PulseT,1)
    firings(i , distime2{i}) = 1;
end

MUn = length(distime2);
x = 1/MUn;

i = 1;
% Remove duplicates
while ~isempty(distime2)
    % Remove lag that may exist between MU
    distimetemp = cell(1,length(distime2));
    for j = 1:length(distime2)
        [c, lags] = xcorr(firings(1,:), firings(j,:), maxlag*2,'normalized');
        [correl, idx] = max(c);
        if correl > 0.2
            distimetemp{j} = distime2{j} + lags(idx);
        else
            distimetemp{j} = distime2{j};
        end
    end
    
    % Find common discharge times
    comdis = zeros(1, length(distime2));
    for j = 2:length(distime2)
        comdis(j) = length(intersect(distime2{1}, distimetemp{j}))/length(distime2{1});
    end
    
    % Flag duplicates and keep the MU with the lowest CoV of ISI
    duplicates = find(comdis >= tol);
    duplicates = [1 duplicates];
    CoV = zeros(1, length(duplicates));
    for j = 1:length(duplicates)
        ISI = diff(distime{duplicates(j)});
        CoV(j) = std(ISI)/mean(ISI);
    end
    [~, survivor] = min(CoV);
    
    % Delete duplicates and save the surviving MU
    distimenew{i} = distime{duplicates(survivor)};
    Pulsenew(i,:) = PulseT(duplicates(survivor),:);

    % Update firings and discharge times 
    for j = 1:length(duplicates)
        distime{duplicates(end-(j-1))} = [];
        distime2{duplicates(end-(j-1))} = [];
    end
    distime = distime(~cellfun('isempty',distime));
    distime2 = distime2(~cellfun('isempty',distime2));

    firings(duplicates,:) = [];
    PulseT(duplicates,:) = [];
    waitbar(x*(MUn-length(distime)), f, [num2str(length(distime)) ' remaining MUs to check'])
    i = i + 1;
end

close(f);