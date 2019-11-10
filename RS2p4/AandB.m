C = zeros(16, 16);
for i = 1:15
    for j = 1:15
        C(i+1, j+1) = pow(mod(log(i)+log(j)-2, 15)+1);
    end
end