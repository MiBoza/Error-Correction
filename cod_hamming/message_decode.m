%Quitamos bits de paridad

function g=message_decode(message_recu,nbp)

t = message_recu;

v = ones(1,length(t));


for I=0:nbp-1
    
    v(1,2^I)=0;
    
end

g=t(1,[find(v)]);