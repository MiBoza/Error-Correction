function [num] = Octal(x)
i = 1;
while x > 0
    p(i) = bitand(x, 7);
    x = bitshift(x, -3);
    i = i + 1;
end
l = length(p);
num(1:l) = p(l:-1:1);
end