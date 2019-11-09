A = zeros(16, 16);
for i = 0:15
    for j = 0:15
        A(i+1, j+1) = Mult(i, j);
    end
end

A
save('Koromaru', 'A');
%clear all

%{
load('Koromaru');
B = zeros(7, 7);
P = [1 6 3];

for i = 1:7
    for j = 1:7
        B(i, j) = uOctal(ModM2([i, zeros(1, j-1)], P));
    end
end

B
save('Koromaru', 'A', 'B');
%}