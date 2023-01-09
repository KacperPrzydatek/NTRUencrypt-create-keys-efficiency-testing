function [paddedFunct] = PadFunction(funct)
    global N;
    if size(funct, 2)<N
        paddedFunct = ExtendFunctionSize(funct, N);
    else
        paddedFunct = funct;
    end
end

