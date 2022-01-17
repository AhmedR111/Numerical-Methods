function x = Thomas2(a, b, c, d)
n = length(d);
a = [0, 0, a];
c(1) = c(1)/b(1);
d(1) = d(1)/b(1);
c(2) = c(2)/(b(2)-a(2)*c(1));
d(2) = d(2)/b(2);
for i = 3 : n-2
  temp = b(i)-a(i)*c(i-1);
  c(i) = c(i)/temp;
  d(i) = (d(i)-a(i)*d(i-1))/temp;
endfor
  d(n-1) = (d(n-1)-a(n-1)*d(n-3))/(b(n-1)-a(n-1)*c(n-3));
  d(n) = (d(n)-a(n)*d(n-2))/(b(n)-a(n)*c(n-2));

x(n) = d(n);
for i = n-2 : -1 : 1
  x(i) = d(i)-c(i)*x(i+2);
endfor
x=x';
endfunction