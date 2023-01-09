format long;
close all;
clear;
clc

global N
% N=8;
N=3;
% N = 251;
p=3;
q=2039;
message = [1 1 0 1 0 0 1 1];
message = SplitFunctToBlocks(message);
[private, public] = GenerateKeys(N, p, q);
for i = 1:size(message,2)
    encrypted = EncryptMessage(public, message{i}, q);
    decrypted{i} = DecryptMessage(private, encrypted, p, q);
end
decrypted = cell2mat(decrypted);
isequal(decrypted, cell2mat(message))
