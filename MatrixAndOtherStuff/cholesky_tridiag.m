function [L] = cholesky_tridiag(d,c)
  n = length(d);
  L = zeros(n,n);
  L(1,1) = sqrt(d(1));
  L(2,1) = c(1)/L(1,1);
  for i = 2 : n-1
    L(i,i) = sqrt(d(i)-c(i)*c(i));
    L(i+1,i) = c(i) / L(i,i);
  endfor
  L(n,n) = sqrt(d(n)-L(n,n-1)*L(n,n-1));
endfunction