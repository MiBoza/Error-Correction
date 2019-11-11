%error finder
%Compares Hamming matrix with error vector R to find out what bit is
%erroneous

function b = find_error(mensaje_recibido,nbp)

Y = mensaje_recibido;

P = generate_hamming_matrix(Y,nbp);

R = error_check(Y,nbp);

for b=1:length(P)
    
    c=isequal(R(:,1),P(:,b));
    
    if c==1
    
        R;
        P(:,b);
        bit=b;
        
        disp('Error en el bit')
        disp(length(Y)-b)
        
        break
    end
    
end