function [nchannel, idxgrid] = getgridconfigQuattro(ports, adapter)

    % find the ports from the Quattrocento with a grid
    idxports = find(ports == 1);
    if ~isempty(idxports == 2) || ~isempty(idxports == 6)
        nchannel = 408;
    elseif ~isempty(idxports == 5)
        nchannel = 312;
    elseif ~isempty(idxports == 1) || ~isempty(idxports == 4)
        nchannel = 216;
    else
        nchannel = 120;
    end

    % get the indexes of the grid
    idxgrid = zeros(408,1);
    ng = 1;
    for i = 1:length(adapter)
        if ports(i) == 1
            idxgrid((i-1)*64+1:i*64) = ng;
            ng = ng + 1;
        end
    end
    idxgrid(385:end) = 7;

    % remove the channels non active
    if nchannel == 312
        idxgrid(321:384) = [];
        idxgrid(97:128) = [];
    elseif nchannel == 216
        idxgrid(257:384) = [];
        idxgrid(65:128) = [];
    elseif nchannel == 120
        idxgrid(193:384) = [];
        idxgrid(33:128) = [];
    end

end