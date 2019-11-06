function [x] = Mod(x,y)
lx = length(x);
ly = length(y);
temp = zeros(1, ly);
yoo = y(1)+1;
load('Koromaru');
while(lx >= ly)
    if x(1) == 0
        x(1) = [];
        lx = lx - 1;
        continue
    end
    for i = 2:16
        if A(yoo,i) == x(1)
            for j = 1:ly
                temp(j) = A(y(j)+1, i);
            end
            x(1:ly) = bitxor(x(1:ly), temp);
            lx = lx - 1;
            x(1) = [];
            break
        end
    end
end
end