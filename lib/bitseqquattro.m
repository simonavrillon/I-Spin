function ConfString = bitseqquattro(fsamp, nchannel, highpass, lowpass)

    switch fsamp
        case 512
            Fsamp = 0;
        case 2048
            Fsamp = 8;
        case 5120
            Fsamp = 16;
        case 10240
            Fsamp = 24;
    end

    switch nchannel
        case 120
            nchan = 0;
        case 216
            nchan = 2;
        case 312
            nchan = 4;
        case 408
            nchan = 6;
    end

    switch highpass
        case 200
            hp = 48;
        case 100
            hp = 32;
        case 10
            hp = 16;
        case 0.3
            hp = 0;
    end

    switch lowpass
        case 4400
            lp = 12;
        case 900
            lp = 8;
        case 500
            lp = 4;
        case 130
            lp = 0;
    end
    
    ConfString(1) = bin2dec('10000000') + Fsamp + nchan;
    ConfString(2) = bin2dec('00111100');
    ConfString(3) = bin2dec('00000000');
    % -------- IN 1 -------- %
    ConfString(4) = 0;
    ConfString(5) = 0;
    ConfString(6) = hp + lp;
    % -------- IN 2 -------- %
    ConfString(7) = 0;
    ConfString(8) = 0;
    ConfString(9) = hp + lp;
    % -------- IN 3 -------- %
    ConfString(10) = 0;
    ConfString(11) = 0;
    ConfString(12) = hp + lp;
    % -------- IN 4 -------- %
    ConfString(13) = 0;
    ConfString(14) = 0;
    ConfString(15) = hp + lp;
    % -------- IN 5 -------- %
    ConfString(16) = 0;
    ConfString(17) = 0;
    ConfString(18) = hp + lp;
    % -------- IN 6 -------- %
    ConfString(19) = 0;
    ConfString(20) = 0;
    ConfString(21) = hp + lp;
    % -------- IN 7 -------- %
    ConfString(22) = 0;
    ConfString(23) = 0;
    ConfString(24) = hp + lp;
    % -------- IN 8 -------- %
    ConfString(25) = 0;
    ConfString(26) = 0;
    ConfString(27) = hp + lp;
    % -------- MULTIPLE IN 1 -------- %
    ConfString(28) = 0;
    ConfString(29) = 0;
    ConfString(30) = hp + lp;
    % -------- MULTIPLE IN 2 -------- %
    ConfString(31) = 0;
    ConfString(32) = 0;
    ConfString(33) = hp + lp;
    % -------- MULTIPLE IN 3 -------- %
    ConfString(34) = 0;
    ConfString(35) = 0;
    ConfString(36) = hp + lp;
    % -------- MULTIPLE IN 4 -------- %
    ConfString(37) = 0;
    ConfString(38) = 0;
    ConfString(39) = hp + lp;
    % ---------- CRC8 ---------- %
    ConfString(40) = CRC8(ConfString, 39);

end


