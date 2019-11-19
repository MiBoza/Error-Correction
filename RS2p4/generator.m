function [result] = generator(order)
result = [1];
load('Koromaru');
for i = 1:order
    result = polyMult(result, [1, pow(i+1)]);
end
end

