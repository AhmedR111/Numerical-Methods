function x = bisectie(a,b,f,tol)
  if f(a)*f(b) > 0
    error("NU AVEM SOLUTII");
  end
  x=a+(b-a)/2;
  if abs(f(x)) > tol && abs(b-a) > tol
    if f(a)*f(x) < 0
      b = x;
    else
      a = x;
    endif
    x = bisectie(a,b,f,tol);
  endif
endfunction