function [num] = uOctal(x)
l = length(x);
num = 0;
for i = 1:l
    num = bitshift(num, 3);
    num = bitor(num, x(i));
end
end