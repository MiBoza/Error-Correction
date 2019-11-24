function [y] = RSdecode(x)
S = Syndrome(x);
if max(S)== 0
    y = x;
else
    [Loc, Mag] = eLocator(S);
    list = search(Loc);
    y = correct(Ncode, Mag, Loc, list);
end
end

