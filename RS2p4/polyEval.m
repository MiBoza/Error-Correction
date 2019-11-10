function [y] = polyEval(poly,x)
y = poly(1);
l = length(poly);

for i = 2:l;
    y = bitxor(Mult(x, y), poly(i));
end
end

