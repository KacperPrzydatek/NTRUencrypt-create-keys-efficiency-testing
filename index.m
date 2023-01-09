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
message

% [private, public] = GenerateKeys(N, p, q);
% encrypted = EncryptMessage(public, message, q);
% decrypted = DecryptMessage(private, encrypted, p, q);

