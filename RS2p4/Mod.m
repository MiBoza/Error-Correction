function [x] = Mod(x,y)
lx = length(x);
ly = length(y);
temp = zeros(1, ly-1);
while(lx >= ly)
    if x(1) == 0
        x(1) = [];
        lx = lx - 1;
        continue
    end
    coefficient = Div(x(1), y(1));
    temp = Scale(y(2:ly), coefficient);
    x(2:ly) = bitxor(x(2:ly), temp);
    x(1) = [];
    lx = lx - 1;
end
end