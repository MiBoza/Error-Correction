[x2, fs] = audioread('Battle for Everyones Souls.wav');
t = 0:1/fs:1;
x = cos(2*pi*250*t) + 0.8*cos(2*pi*500*t) + 0.4*cos(2*pi*750*t);

% Genera  Ruido blanco
L = length(t);
var = 2;   % varianza
k = randn(1,L);   % ruido no uniforme
mean1 = 0.0;    % media
ruido1 = awgn(x2,10);
x1=ruido1;
in = 1:100;
plot(in, x(1:100),in, x1(1:100));
y=num2hex(x1(1:100));
%sound(x1,fs)
