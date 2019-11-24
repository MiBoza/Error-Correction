[x2, fs] = audioread('Battle for Everyones Souls.wav');
w=imread('asasa.png');
l=x2;
error=0;
%plot(in, x2(1:1000));
ruido1 = awgn(x2,20);
t=imnoise(w,'gaussian',0,0.025);
x1=ruido1;
in = 1:100000;
plot(in, x1(1:100000),in, x2(1:100000));
x3=round(100*x2);
x55=x3/100;
x5=x3(1:500000);
x4=round(100*x1);
y=num2hex(x3);
y1=num2hex(x4);
y2=num2hex(x4);
r=hex2num(y);
%sound(x55,fs)

for i=1:1:500000 
   for o=1:1:4
       a=y(i,0);
       d=funcioncodi();
       y1(i,o)=d;
   end
end
%asi se deberia de codificar 

%luego se le suma ruido 
%y luego se decodifica de la misma manera

for i=1:1:500000 
   for o=1:1:4
       a=y1(i,0);
       d=funciondeco();
       y2(i,o)=d;
   end
end
        
r=hex2num(y);
r1=hex2num(y1);
%persistencia de error
t=r1-r;
%si la correccion es correcta deberia de dar cero la matriz
% para saber cuantos errores se hace lo siguiente
% 
 for i=1:1:500000 
    if t(i) ~= 0
        error=error+1;
    end
end








