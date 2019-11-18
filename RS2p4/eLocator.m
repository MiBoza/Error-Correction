function [Loc, Mag] = eLocator(S)
div = [1 0 0 0 0];
q = div;
while(length(q) > 3)
    r = S;
    [q, S] = Mod(div, S);
    div = r;
end
Loc = q;
Mag = S;
end

