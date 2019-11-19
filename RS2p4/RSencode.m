function [code] = RSencode(message)
code = [message zeros(1, 4)];
load('Koromaru')
[~, remainder] = Mod(code, p);
code(12:15) = bitor(code(12:15), remainder);
end