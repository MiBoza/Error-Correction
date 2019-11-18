message = [6 10 15 1 12 14 7 15];
code = RSencode(message)
Ncode = bitxor(code, [zeros(1, 10) 13 6])
S = Syndrome(Ncode)
[Loc, Mag] = eLocator(S)
list = search(Loc)
M = correct(Ncode, Mag, Loc, list)
