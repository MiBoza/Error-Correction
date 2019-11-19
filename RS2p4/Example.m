message = [13 15 5 6 6 0 11 6 4 15 10];
code = RSencode(message)
Ncode = bitxor(code, [0 0 0 0 0 0 0 11 2 0 0 0 0 0 0])
S = Syndrome(Ncode)
if max(S)== 0
    Ncode
else
    [Loc, Mag] = eLocator(S)
    list = search(Loc)
    M = correct(Ncode, Mag, Loc, list)
end