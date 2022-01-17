function y = RK22_u11(a, b, n, y0, f)
  h = (b - a) / n;
  x(1 : n+1) = a + h * [0:n];
  y(1) = y0;
  for i = 1:n
    k1 = h * f(x(i), y(i));
    k2 = h * f(x(i) + h, y(i) + k1);
    y(i+1) = y(i) + (k1+k2)/2;
  endfor
  y_e = @(x) sin(x) + e.^(-20.*x);
  plot(x, y, 'r', x, y_e(x), 'b');
endfunction