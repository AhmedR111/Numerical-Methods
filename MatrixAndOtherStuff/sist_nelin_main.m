function x_fin = sist_nelin_main(nr_pasi, x0, tol)
  delta_x = zeros(2,1);
  x_fin = x0;
  x_ref = [0; 1];
  %while norm(x_fin - ) < tol
    for pas = 1:nr_pasi
      x0 = x_fin;
      J = sist_nelin_jacobian(x0);
      F = sist_nelin_F(x0);
      delta_x = J\(-F);
      x_fin = delta_x + x0;
      if norm(x0 - x_fin) < tol
        break
      endif
    endfor
    if norm(x0 - x_fin) > tol
      norm(x0 - x_fin)
      printf("\n!!!!nu converge!!!!\n\n")
    endif
endfunction