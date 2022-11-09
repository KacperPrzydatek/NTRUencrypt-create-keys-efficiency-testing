function out = generate_random_poly(N, df)

    f = zeros(1, N);
    rr = rand(1, N);
    for id = 1 : df + 1
        [maxi, ip] = max(rr);
        f(ip) = 1;
        rr(ip) = -1;
    end
    rr = abs(rr);
    for id = 1 : df
        [mini, ip] = min(rr);
        f(ip) = -1;
        rr(ip) = 1;
    end
    f_size = size(f, 2);
    while f(f_size) == 0 && f_size > 1
        f = f(1 : f_size-1);
        f_size = f_size - 1;
    end
    out = f;
end