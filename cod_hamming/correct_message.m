%fixes erroneous bit

function a=correct_message(mensaje_recibido,nbp)
    
d=mensaje_recibido;

error_pos=find_error(mensaje_recibido, nbp);

%modulo inverts a bit
a=d;

a(1,error_pos)=mod(d(1,error_pos)+1,2);