function outputFunction = CutZeros(funct)
    temp = find(funct);
    outputFunction = funct(1:temp(end));
end