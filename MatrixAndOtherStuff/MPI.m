function [lambda x0 iter] = MPI(x0, A, miu, tol, maxiter)
  iter = maxiter;
  ceva = eye(size(A));
  while maxiter != 0
    maxiter--;
    %z = A*x0;
    z = (A - miu * ceva)\x0;
    x0 = z/norm(z);
    lambda = x0' * A * x0;
    if (norm(A * x0 - lambda * x0) < tol)
      break
    endif
  endwhile
  iter = iter - maxiter;
endfunction