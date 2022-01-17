function x = secanta(a,b,f,tol)
  if f(a)*f(b) > 0
    error("NU AVEM SOLUTII");
  end
  x = (a * (f(b) - f(a)) - f(a) * (b - a)) / (f(b) - f(a));
  if abs(f(x)) > tol && abs(b-a) > tol
    if f(a)*f(x) < 0
      b = x;
    else
      a = x;
    endif
    x = secanta(a,b,f,tol);
  endif
endfunction