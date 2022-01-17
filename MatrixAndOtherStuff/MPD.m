function [lambda x0 iter] = MPD(x0, A, tol, maxiter)
  iter = maxiter;
  while maxiter != 0
    maxiter--;
    z = A*x0;
    x0 = z/norm(z);
    lambda = x0' * A * x0;
    if (norm(A * x0 - lambda * x0) < tol)
      break
    endif
  endwhile
  iter = iter - maxiter;
endfunction