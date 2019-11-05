A = zeros(8, 8);
for i = 0:7
    for j = 0:7
        A(i+1, j+1) = MultM2(i, j);
    end
end

A
save('Yukari', 'A');
clear all

load('Yukari');
B = zeros(7, 7);
P = [1 6 3];

for i = 1:7
    for j = 1:7
        B(i, j) = uOctal(ModM2([i, zeros(1, j-1)], P));
    end
end

B
save('Yukari', 'A', 'B');


