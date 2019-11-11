clearvars all
% ---------------------------------------------------------------------
%mensaje_enviado = input('Ingrese el mensaje enviado de 1 byte entre []: ');
mensaje_recibido = input('Ingrese el mensaje recibido de 1 byte entre []: ');

n = length(mensaje_recibido);
        
%Formula que calcula la cantidad de bits de paridad del dato. Debería ser
%siempre 4 bits de paridad.
nbp=floor(log2(n+ceil(log2(n))))+1;

%Buscar si existe un error
vect_error = error_check(mensaje_recibido,nbp);
pause

%Indica el bit que posee error en caso de que exista
pos_error = find_error(mensaje_recibido,nbp);

pause

%correct_message() corrects the error
mensaje_corregido=correct_message(mensaje_recibido,nbp)

pause

%message_decode() removes the parity bits to unveil the original string
fprintf('Mensaje sin bits de paridad \n')
mensaje_final = message_decode(mensaje_corregido,nbp)

pause

