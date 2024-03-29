format long;
close all;
clear;
clc

global N
p=3;
q=2039;

% N=3;
% message = [1 1 0 1 0 0 1 1];
% N=15;
% message = [1 1 0 1 0 0 1 1];
N = 251;
message = [1 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1 1 1 0 1 0 0 1 1];

message = SplitFunctToBlocks(message);
[private, public] = GenerateKeys(N, p, q);
for i = 1:size(message,2)
    encrypted{i} = EncryptMessage(public, message{i}, q);
end

for i = 1:size(message,2)
    decrypted{i} = DecryptMessage(private, encrypted{i}, p, q);
end

decrypted = CutZeros(cell2mat(decrypted));
isequal(decrypted, CutZeros(cell2mat(message)))
% decrypted
% cell2mat(message)
