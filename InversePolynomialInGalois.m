function inversed = InversePolynomialInGalois(funct, primeNumber, N)
    funct = ExtendFunctionSize(funct, N);
    matrixOfInverseCoefficients=zeros(N,N);
    for i = 1:N
        for j = 1:N
            matrixOfInverseCoefficients(i,j) = funct(mod(abs(N-j+i),N)+1);
        end
    end
    vectorOfResponse=zeros(N,1);
    vectorOfResponse(1)=1;
    gMatrix = mod(matrixOfInverseCoefficients + primeNumber, primeNumber);
    inversed = gflineq(gMatrix,vectorOfResponse, primeNumber);
    inversed = CutZeros(inversed');
end