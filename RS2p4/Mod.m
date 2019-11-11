function [x] = Mod(x,y)
lx = length(x);
ly = length(y);
temp = zeros(1, ly);
while(lx >= ly)
    if x(1) == 0
        x(1) = [];
        lx = lx - 1;
        continue
    end
    coefficient = Div(x(1), y(1));
    temp = Scale(y, coefficient);
    x(1:ly) = bitxor(x(1:ly), temp);
    x(1) = [];
    lx = lx - 1;
end
end