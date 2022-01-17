function J = sist_nelin_jacobian(x)
  J = zeros(2);
  J = [1 2; 2*x(1) 8*x(2)];
endfunction