function [r] = polyMult(p,q)
lp = length(p);
lq = length(q);
r = zeros(1, lp + lq - 1);
for i = 1:lp
    for j = 1:lq
        r(i+j-1) = bitxor(r(i+j-1), Mult(p(i), q(j)));
    end
end        
end

