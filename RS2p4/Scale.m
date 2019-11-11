function [result] = Scale(poly, C)
l = length(poly);
result = zeros(1, l);
for i = 1:l
    result(i) = Mult(poly(i), C);
end
end

