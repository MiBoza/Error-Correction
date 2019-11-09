function [product] = Mult(a,b)
product = 0;
while(b > 0)
    if(bitget(b, 1) == 1)
        product = bitxor(product, a);
    end
    b = bitshift(b, -1);
    a = bitshift(a, 1);

if a > 15
    a = bitxor(a, 19);
end
end
end