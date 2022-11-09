function [qq, r] = divide_poly_mod(a, b, p)
    a = mod(a, p);
    b = mod(b, p);
    r = a;
    qq = zeros(1, 1);
    bs = size(b, 2);
    [d, u] = inverse_integer_mod(b(bs), p);
    rs = size(r, 2);
    while rs >= bs
        rbs = rs - bs;
        v = zeros(1, rbs + 1);
        v(rbs + 1) = u * r(rs);
        vb = multiplication_poly(v, b, p);
        r = add_poly_mod(r, -vb, p);
        qq = add_poly_mod(qq, v, p);
        rs = size(r, 2);
        if any(r - zeros(1, rs)) == 0
            return
        end
    end
return

