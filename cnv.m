function [y] = cnv(x, h)
% Convuelve x con h y coloca resultado en y
% [y] = cnv(x, h)
Lx = length(x); % n�mero de muestras de x
Lh = length(h); % n�mero de muestras de h
N = Lx + Lh - 1; % n�mero de muestras de y
y = zeros(1, N); % reserva memoria para el vector y,
% acelerando los c�lculos siguientes
for n = 1 : N % �ndice de y
k1 = max([1 (n-Lh+1)]); % primer valor de k
k2 = min([n Lx]); % �ltimo valor de k
for k = k1 : k2 % calcula una muestra de y
y(n) = y(n) + (x(k) * h(n-k+1)); % invierte h
end
end