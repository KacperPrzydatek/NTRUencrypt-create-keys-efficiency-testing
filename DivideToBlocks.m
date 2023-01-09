function [blockArray] = DivideToBlocks(funct)
    global N;
    if size(funct)>N
        for i = 1:ceil(size(funct)/N)
            blockArray(i)=PadFunction(funct(N*(i-1)+1:N*i+1));
        end
    else
        blockArray(1) = funct;
    end
end

