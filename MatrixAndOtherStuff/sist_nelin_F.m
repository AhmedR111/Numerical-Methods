function F = sist_nelin_F(x)
  F = zeros(2,1);
  F = [x(1) + 2 * x(2) - 2; x(1)^2 + 4 * x(2)^2 - 4];
endfunction
