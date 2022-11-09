function [fp, index] = euclidean_inverse(f, p, N)
    fN = zeros(1, N + 1);
    fN(1) = -1;
    fN(N + 1) = 1;
    u = ones(1, 1);
    d = mod(f, p);
    v1 = zeros(1, 1);
    v3 = mod(fN, p);
    v3s = size(v3, 2);
    while isequal(any(v3 - zeros(1, v3s)),1)
        [qq, t3] = divide_poly_mod(d, v3, p);
        qv1 = multiplicate_poly_mod(qq, v1, p);
        t1 = add_poly_mod(u, -qv1, p);
        u = v1;
        d = v3;
        v1 = t1;
        v3 = t3;
        v3s = size(v3, 2);
    end
    if size(d, 2) == 1
        [wa, di] = inverse_integer_mod(d, p);
        if wa ~= 1
            fprintf('wa');
            wa;
        end
        fp = mod(di*u, p);
        index = 1;
    else
        fp = 0;
        index = 0;
    end
return


