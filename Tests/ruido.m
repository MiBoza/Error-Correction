%[x, fs] = audioread('Battle for Everyones Souls.wav');
sound(x(1:1000000, :), fs);
t = 0:1/fs:1;
x = cos(2*pi*250*t) + 0.8*cos(2*pi*500*t) + 0.4*cos(2*pi*750*t);

% Genera  Ruido blanco
L = length(t);
var = 2;   % varianza
k = randn(1,L);   % ruido no uniforme
mean1 = 0.0;    % media
ruido1 = mean1 + sqrt(var)*k;   % ruido blanco
ruido1 = awgn(x,20);