format long;
close all;
clear;
clc

global N
N=251;
% N = 7;

p=3;
% q=61;
% q = 2039;
% q = 13;
counter = 1e2;


Tgalois = zeros(1, counter);
Tmultiplicative = zeros(1, counter);
Noptions = [107 113 131 139 149 163 173 181 199 211 227 239 251 263 271 281 293 307 317 331];
df = [72 86 88 106 106 108 128 128 132 152 152 176 176 176 180 204 204 204 234 234];
q = [509, 1021, 1021, 1021, 1021, 1021, 1021, 1021, 1021, 1021, 1021, 1021, 1021, 1021, 1021, 2039, 2039, 2039, 2039, 2039];

TG = zeros(1, length(Noptions));
TM = zeros(1, length(Noptions));
tic
for j = 1:length(Noptions)
    for i = 1:counter
        f = generate_random_poly(Noptions(j), df(j))
        tic
        InversePolynomialInGalois(f, q(j), Noptions(j));
        Tgalois(i) = toc;
        tic
        euclidean_inverse(f, q(j), Noptions(j));
        Tmultiplicative(i) = toc;
    end
        TG(j) = sum(Tgalois);
        TM(j) = sum(Tmultiplicative);
end
toc
% save('result.csv')
csvwrite('myFile.csv',[TG; TM])
% csvwrite('myFile.csv',TM, 1, 2)
