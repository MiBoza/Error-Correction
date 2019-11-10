function [product] = Mult(a,b)
if a == 0 | b == 0
    product = 0;
else
    load('Koromaru');
    product = pow(mod(Log(a)+Log(b)-2, 15)+1);
end
end