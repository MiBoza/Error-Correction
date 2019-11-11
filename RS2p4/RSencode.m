function [code] = RSencode(message)
code = [message zeros(1, 4)];
load('Koromaru')
remainder = Mod(code, p);
code(9:12) = bitor(code(9:12), remainder);
end
