function encrypted = EncryptMessage(publicKey, message, q)
    global N;
    h = publicKey{1};
    
    % Generate random part
    r = rand(1, N)*3;
    r = discretFunction(r);
    encrypted = ExtendFunctionSize(add_poly_mod(multiplicate_poly_mod(h, r, q), message,q), size(message,2));
end