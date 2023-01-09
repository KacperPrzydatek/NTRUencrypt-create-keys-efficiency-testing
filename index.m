format long;
close all;
clear;
clc
global N
N=8;
% N = 7;
% N = 251;
p=3;
q=2039;
message = [1 1 0 1 1 0 1 1]
[private, public] = GenerateKeys(N, p, q);
encrypted = EncryptMessage(public, message, q)
decrypted = DecryptMessage(private, encrypted, p, q)
% f = generate_random_poly(N, 2)
% % InversePolynomialByExtendedGCD(f, fn)
% % fp = modPositive(InversePolynomialModDeg(f, N),p)
% 
% fp = InversePolynomialInGalois(f, q, N)
% % mod(multiplyPlynomialsModDeg(f, fp),q)
% ffq = multiplicate_poly_mod(f, fp, q)
% fp2 = euclidean_inverse(f, q, N)
% mod(multiplyPlynomialsModDeg(f, fp2),q)
% ffq = multiplicate_poly_mod(f, fp2, q)
% isequal(fp, fp2)

% modPositive(multiplyPlynomialsModDeg(f, fp, N),p)
% x = modPositive(multiplyPlynomialsModDeg(f, fp, N),p)
% modPositive(x, p)

