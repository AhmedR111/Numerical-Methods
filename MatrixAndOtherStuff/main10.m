function ee = main10()
  x=[0.9 1.3 1.9 2.1 2.6 3.0 3.9 4.4 4.7 5 6 7 8 9.2 10.5 11.3 11.6 12 12.6 13 13.3];
y=[1.3 1.5 1.85 2.1 2.6 2.7 2.4 2.15 2.05 2.1 2.25 2.3 2.25 1.95 1.4 0.9 0.7 0.6 0.5 0.4 0.25];
n = length(x);
z = linspace(0.9, 13.3, 100);
for i = 1 : length(z)
    val1(i) = Lagrange(z(i), x, y);
    val2(i) = interp_liniara(z(i), x, y);
endfor
hold on;
plot(val1, 'r')
plot(val2, 'b')
hold off;
x = 0:pi/100:2*pi;
y = sin(x);
plot(x,y);
endfunction