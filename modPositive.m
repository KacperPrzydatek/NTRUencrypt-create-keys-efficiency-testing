function output = modPositive(input,modder)
    output = zeros(1,length(input));
    for i = 1:length(input)
        output(i)=mod(input(i),modder);
    end
end