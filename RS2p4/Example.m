message = [5 0 7 1 4 2 0 4];
code = RSencode(message)
Syndrome(code)
Ncode = [4 code(2:12)]
Syndrome(Ncode)
