function product = multiplyPlynomialsModDeg(firstMultiplier, secondMultiplier)
    global N;
    firstMultiplier = ExtendFunctionSize(firstMultiplier, N);
    secondMultiplier = ExtendFunctionSize(secondMultiplier, N);
    
    product = zeros(1,N);
    for i = 1:N
        for j = 1:N
            product(mod(i+j-2,N)+1) = product(mod(i+j-2,N)+1) + firstMultiplier(i)*secondMultiplier(j);
        end
    end
end