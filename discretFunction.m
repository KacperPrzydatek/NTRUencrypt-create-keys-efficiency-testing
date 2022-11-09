function funct = discretFunction(f)
    for i = 1:length(f)
        if f(i)<1
            f(i) = -1;
        elseif f(i)<2
            f(i)=0;
        else
            f(i)=1;
        end
    end
    funct = f;
end