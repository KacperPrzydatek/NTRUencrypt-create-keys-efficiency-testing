function extendedFunct = ExtendFunctionSize(funct, size)
    if(length(funct)<size)
        extendedFunct = [funct, zeros(1, size-length(funct))];
    elseif(length(funct)>size)
        disp('Function is bigger that declared size');
return
    else
        extendedFunct = funct;
    end
end