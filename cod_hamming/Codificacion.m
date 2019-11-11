function [sent_message] = Codificacion(message)
%Message = el dato de 1 byte entre []

n = length(message);
        
%Formula que calcula la cantidad de bits de paridad del dato. Debería ser
%siempre 4 bits de paridad.
nbp=floor(log2(n+ceil(log2(n))))+1;

sent_message = insertar_bits_paridad(message,nbp);
nm = length(sent_message);

%Se tiene un mensaje de n bits de datos y nbp bits de paridad
%para obtener un mensaje codificado de nm bits
%A random bit gets inverted during the transmission of the message