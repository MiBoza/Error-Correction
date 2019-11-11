function P = generar_matriz(coded_message,nbp)

P = zeros(nbp,length(coded_message));
stop_z=length(P);

for X=1:nbp
    
    for Y=0:length(P)-1
        
        if Y<stop_z/2^X
           P(X,((2^X)*Y+2^(X-1)):((2^X)*Y+(2^X)-1))=1;
        end
        
    end    
    
end


P=P(:,1:stop_z);
