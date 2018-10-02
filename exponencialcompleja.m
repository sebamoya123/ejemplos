x(n) = e ( -0.1 + 0.3 j ) n = e -0.1 n e 0.3 j n
x(n) = e -0.1 n [cos(0.3 n) + j sen(0.3 n)]

%El siguiente código grafica la magnitud, fase, parte real y parte imaginaria de x(n)
%para el rango -20 ? n ? 20.

n = [-20 : 1 : 20]; a = -0.1 + 0.3j; x = exp(a * n);
subplot 221; stem(n, real(x)); title('parte real'); xlabel('n')
subplot 222; stem(n, imag(x)); title('part imag'); xlabel('n')
subplot 223; stem(n, abs(x)); title('magnitud'); xlabel('n')
subplot 224; stem(n,(180/pi)*angle(x)); title('fase [°]'); xlabel('n')