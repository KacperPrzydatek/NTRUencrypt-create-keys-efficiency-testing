format long;
close all;
clear;
clc

N=5;
% N = 7;
% N = 251;
p=3;
q=61;

% f = [-1 0 1 -1 0 0 1 -1 -1 -1 -1 0 0 1 -1 -1 -1 -1 -1 -1 -1 -1 0 0 -1 0 1 1 -1 1 1 0 -1 0 1 0 1 1 0 1 0 0 -1 -1 -1 -1 0 -1 1 -1 1 1 1 -1 -1 -1 0 0 -1 0 0 0 0 1 1 -1 0 0 1 0 0 1 1 0 1 1 1 -1 0 1 0 1 -1 1 1 0 1 0 -1 1 0 -1 0 0 1 -1 -1 -1 0 0 -1 -1 -1 1 -1 0 0 0 0 1 0 0 1 -1 1 0 1 1 0 0 -1 0 0 1 -1 0 -1 0 1 1 -1 1 0 0 0 1 -1 1 1 -1 -1 -1 1 1 -1 1 1 1 1 0 0 1 -1 -1 1 1 1 -1 1 0 0 -1 1 -1 0 -1 0 1 -1 -1 -1 1 1 -1 1 -1 0 0 1 -1 0 1 0 0 1 -1 -1 0 -1 -1 1 -1 1 1 -1 0 -1 0 0 1 -1 -1 1 1 1 1 -1 0 0 0 0 1 1 1 0 -1 1 1 1 0 0 1 1 -1 -1 0 0 1 0 0 1 -1 -1 -1 0 -1 0 -1 -1 -1 1 0 -1 -1 0 -1 0 0 -1 0 0];

f = generate_random_poly(N, 2)
% InversePolynomialByExtendedGCD(f, fn)
% fp = modPositive(InversePolynomialModDeg(f, N),p)

fp = InversePolynomialInGalois(f, q, N)
% mod(multiplyPlynomialsModDeg(f, fp),q)
% ffq = multiplicate_poly_mod(f, fp, q)
fp2 = euclidean_inverse(f, q, N)
% mod(multiplyPlynomialsModDeg(f, fp2),q)
% ffq = multiplicate_poly_mod(f, fp2, q)
isequal(fp, fp2)

% modPositive(multiplyPlynomialsModDeg(f, fp, N),p)
% x = modPositive(multiplyPlynomialsModDeg(f, fp, N),p)
% modPositive(x, p)