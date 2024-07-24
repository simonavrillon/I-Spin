function [nchannel, idxgrid] = getgridconfigOEphys(ports, adapter)

    % find the ports from the Quattrocento with a grid
    idxports = find(ports == 1);

    % get the indexes of the grid
    nchannel = 0;
    ch = 1;
    for i = 1:sum(idxports)
        if contains(adapter{i}, 'GR04MM1305') || contains(gridname{i}, 'HD04MM1305') || contains(gridname{i}, 'GR08MM1305') || contains(gridname{i}, 'HD08MM1305') || contains(gridname{i}, 'GR10MM0808') || contains(gridname{i}, 'HD10MM0808')
            nchannel = nchannel + 64;
            idxgrid(ch:ch+63,1) = i;
            ch = ch+64;
        elseif contains(gridname{i}, 'MYOMRF-4x8') || contains(gridname{i}, 'MYOMNP-1x32')
            nchannel = nchannel + 32;
            idxgrid(ch:ch+31,1) = i;
            ch = ch+32;
        end
    end
    % add the auxiliary channels
    nchannel = nchannel + 8;
    idxgrid(ch:ch+7) = 7;
end