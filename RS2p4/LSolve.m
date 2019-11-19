function [B] = LSolve(U, B)
l = length(U(1, :));
U = [U B];

for j = 1:l
    for i = 1:l
        if i == j
            c = Div(1, U(i, j));
            U(i, :) = Scale(U(i, :), c);
        else
            b = 1-j;
            b = mod(i+b, l+b)+j;
            c = Div(U(i, j), U(b, j));
            U(i, :) = bitxor(U(i, :), Scale(U(b, :), c));
        end
    end
end

B = U(:, l+1);

end