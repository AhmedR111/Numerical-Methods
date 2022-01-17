function [c s] = detrot(x,k,l)
  r=sqrt(x(k)*x(k)+x(l)*x(l));
  c=x(k)/r;
  s=-x(l)/r;
endfunction