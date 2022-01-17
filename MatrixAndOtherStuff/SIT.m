function x = SIT(U,b)
  [n n] = size(U);
  x = zeros(n,1);
  for i = 1 : n
    s=0;
    for j = 1 : i
      s = s + U(i,j)*x(j);
    endfor
    x(i) = (b(i) - s)/U(i,i);
  endfor
endfunction