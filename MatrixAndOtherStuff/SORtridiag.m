function [x succes iter] = SORtridiag(a, d, c, b, x0, tol, maxiter, w)
  n = length(d);
  succes = 0;
  iter = maxiter;
  x = zeros(n,1);
  a = [0;a];
  while maxiter > 0
    maxiter--;
    x(1) = (b(1) - c(1) * x(2)) / d(1);
    x(1) = w * x(1) + (1 - w) * x(1);
    for i = 2:n - 1
      %suma = A(i,1:i-1) * x(1:i-1) + A(i,i+1:n) * x0(i+1:n);
      %x(i) = (b(i) - suma) / A(i,i);
      x(i) = (b(i) - a(i) * x(i - 1) - c(i) * x(i + 1)) / d(i);
      x(i) = w * x(i) + (1 - w) * x(i);
    endfor
    x(n) = (b(n) - a(n) * x(n - 1)) / d(n);
    x(n) = w * x(n) + (1 - w) * x(n);
    if norm(x - x0) < tol
      succes = 1;
      break;
    endif
    x0 = x;
  endwhile
  iter = iter - maxiter;
endfunction