function decrypted = DecryptMessage(privateKey, encryptedMessage, p, q)
global N;
% [f, fp, fq, g] = privateKey
f = privateKey{1};
fp = privateKey{2};
fq = privateKey{3};
g = privateKey{4};

%Decryption
a = multiplicate_poly_mod(f, encryptedMessage, q);
for i = 1:N
    a(i) = a(i) - (q *(a(i)>q/2));
end
b = mod(a, p);
decrypted = multiplicate_poly_mod(b, fp, p);
end