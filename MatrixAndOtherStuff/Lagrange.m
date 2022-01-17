function val = Lagrange(c,x,y)
  val = 0;
  n = length(x);
  for k = 1:n
    prod=y(k);
    for i= 1:n
      if i~=k
        prod = prod * (c-x(i))/(x(k)-x(i));
      endif
    endfor
    val += prod;
  endfor
endfunction