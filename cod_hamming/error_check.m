%error check
%extracts parity bits and checks for errors


function R = error_check(mensaje_recibido,nbp)

O = mensaje_recibido;

P = generate_hamming_matrix(O,nbp);


%Finds positions where message string = 1
for V=1:nbp
    T(V,:)=P(V,:).*O(1,:);
end


%Finds if sum of ones for each parity line is even (0) or odd (1)
for U=1:nbp
    R(U,:)= mod(length(find(T(U,:))),2);
end

R;

flag=isequal(R,zeros(length(R),1));

if flag==1
    disp('No hay error')
else
    disp('Error encontrado')
    
flag;
end




