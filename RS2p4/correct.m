function [M] = correct(M, Mag, Loc, list)
l = length(list);
lo = length(Loc);
load('Koromaru')

for j = lo:-1:2
    if mod(lo - j, 2) == 0
        Loc(j) = Loc(j-1);
    else
        Loc(j) = 0;
    end
end
    Loc(1) = []

for i = 1:l
    a = Div(1, pow(list(i)));
    b = polyEval(Mag, a);
    c = polyEval(Loc, a);
    e = Div(b, c);
    M(16-list(i)) = bitxor(M(16-list(i)), e);
end

