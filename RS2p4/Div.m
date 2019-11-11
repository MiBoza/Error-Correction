function [q] = Div(a,b)
if b == 0
    error('Error: Division by 0')
else
    if a == 0
        q = 0;
    else
    load('Koromaru');
    q = pow(mod(Log(a)-Log(b), 15)+1);
    end
end
end

