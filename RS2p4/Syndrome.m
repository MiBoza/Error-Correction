function [syn] = Syndrome(code)
load('Koromaru');
syn = zeros(1, 4);
for i = 1:4
    syn(i) = polyEval(code, pow(i+1));
end

