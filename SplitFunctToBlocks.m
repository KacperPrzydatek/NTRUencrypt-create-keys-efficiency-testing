function [blockArray] = SplitFunctToBlocks(funct)
    global N;
    if size(funct, 2)>N
        for i = 1:ceil(size(funct, 2)/N)
            f2 = PadFunction(funct(N*(i-1)+1:size(funct,2)));
            blockArray{i}=PadFunction(f2(1:N));
        end
    else
        blockArray = {funct};
    end
end

