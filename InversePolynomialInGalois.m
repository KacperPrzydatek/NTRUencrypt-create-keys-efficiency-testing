function inversed = InversePolynomialInGalois(funct, primeNumber, N)
%     p=3
%     q=128
    funct = ExtendFunctionSize(funct, N);
    matrixOfInverseCoefficients=zeros(N,N);
    for i = 1:N
        for j = 1:N
            matrixOfInverseCoefficients(i,j) = funct(mod(abs(N-j+i),N)+1);
        end
    end
    funct
    matrixOfInverseCoefficients
%     for i = 1:N SECOND
%         for j = 1:N
%             matrixOfInverseCoefficients(i,j) = funct(mod(abs(N-j+i-1),N)+1);
%         end
%     end
%     for i = 1:N
%         for j = 1:N
%             matrixOfInverseCoefficients(i,j) = funct(mod(j-i,N)+1);
%         end
%     end

    vectorOfResponse=zeros(N,1);
    vectorOfResponse(1)=1;
%     gMatrix = matrixOfInverseCoefficients + (primeNumber-1)/2
    gMatrix = mod(matrixOfInverseCoefficients + primeNumber, primeNumber);
    inversed = gflineq(gMatrix,vectorOfResponse, primeNumber);

%     originalAns = mod(gMatrix*inversed, primeNumber)'
%     GaloisAns = mod(matrixOfInverseCoefficients*inversed, primeNumber)'
    inversed = CutZeros(inversed');
end