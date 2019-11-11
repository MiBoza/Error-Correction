%This function's role is to insert zeros (0) at the spots where the parity
%bits will be

function E=insertar_espacios_paridad(message,nbp)

clearvars D E

nb_bits_parity = nbp; % Número de bits de paridad

D = message;

E = ones(1,length(D)+nb_bits_parity); %Crea una matriz E de 1´s de 1 fila y x columnas


%puts zeros in the matrix at every 2^n position
for I=0:nb_bits_parity
    E(1,2^I)=0;                        % Cambia el dato  (fila,colum) de la matriz de 1's por 0
    E=E(1,1:length(D)+nb_bits_parity); % Vuelve a crear la matriz E
end




%Acomoda los bits de paridad y bits de datos en sus posiciones respectivas
for M=1:length(E) % Recorremos la matriz E
    
    if E(1,M)==1  % Para cada 1 que se encuentre:
        
        count=floor(log2(M)+1);  
        E(1,M)=D(1,M-count);
    end
end

E; %Matriz del mensaje original