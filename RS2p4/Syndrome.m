function [syn] = Syndrome(code)
load('Koromaru');
syn = zeros(1, 5);
for i = 2:5
    syn(i) = polyEval(code, pow(i-1));
end

