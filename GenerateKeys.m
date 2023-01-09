function  [private, public] = GenerateKeys(N, p, q)
% Create private key - [f, fp, g] and private component for public key - fq
while 1
        f = generate_random_poly(N, floor(N/3));
        fp = euclidean_inverse(f, p, N);
        fq = euclidean_inverse(f, q, N);
    if (multiplicate_poly_mod(f,fp,p) == 1)
        if (multiplicate_poly_mod(f,fq,q) == 1)
            break;
        end
    end
end
g = rand(1, N)*3;
g = discretFunction(g);
private = {f, fp, fq, g};
disp('Generated private key [f, fp, fq, g]');


% Create public key - h
h = mod(p*multiplicate_poly_mod(fq,g,q),q);
public = {h};
disp('Generated public key [h]');
% mod(mod(p*g,q),p)
% multiplicate_poly_mod(f,h,p)
end