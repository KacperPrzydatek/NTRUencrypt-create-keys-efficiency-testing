function [paddedFunct] = PadFunction(funct)
global N;
paddedFunct = ExtendFunctionSize(funct, N)
end

