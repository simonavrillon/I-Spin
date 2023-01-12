function crc = CRC8(Vector, Len)
%
% COMPUTE CRC 
% CRC is the acronym of Cyclic Redundancy Check, and represents a function whose 
% input is a set of bytes (also called byte stream), and whose output is a numerical value, 
% usually a 16 or 32 bit integer. 
% The term CRC is used to refer to both the function and the value calculated by it. 
% The main purpose of the CRC is to allow the detection of errors that could compromise data 
% integrity, acting in this way as a validity check associated with a specific data structure.
%


crc = 0;
j = 1;

while(Len > 0)
    Extract = Vector(j);
    for i = 8:-1:1
        
        Sum = xor(mod(crc,2), mod(Extract,2));
        crc = floor(crc/2);
        
        if(Sum > 0)
            str = zeros(1,8);
            a = dec2bin(crc,8);
            b = dec2bin(140,8);
            for k = 1 : 8
                 str(k) = ~((a(k) == b(k)));
            end
            
            crc = bin2dec(strrep(num2str(str),' ',''));
        end
        
        Extract = floor(Extract/2); 
    end
    
    Len = Len - 1;
    
    j=j+1;
end