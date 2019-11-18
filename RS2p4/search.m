function [list] = search(Loc)
index = 1;
load('Koromaru');
for i = 0:11
    if polyEval(Loc, pow(mod(-i, 15)+1)) == 0
        list(index) = i + 1;
        index = index + 1;
    end
end
end

