function [product] = Mult(a,b)
load('Koromaru');
product = pow(mod(log(a)+log(b)-2, 15)+1);
end