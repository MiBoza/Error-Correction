function [M] = correct(M, Mag, Loc, list)
l = length(list);
lo = length(Loc);
load('Koromaru')
for i = 1:l
    a = pow(list(i));
    b = polyEval(Mag, Div(1, a));
    for j = 1:lo-1
        if(mod(j, 2) == 0)
            Loc(lo-j+1) = 0;
        else
            Loc(lo-j+1) = Loc(lo-j);
        end
    end
    Loc(1) = [];
    c = polyEval(Loc, Div(1, a));
    e = Mult(a, Div(b, c));
    M(13-list(i)) = bitxor(M(13-list(i)), e);
end

