function x = GPP_SH (A,b)
  [n n] = size(A);
  for p = 1:n-1
    [piv lpiv] = max(abs(A(p:p+1,p)));
    if lpiv ~= p
      aux = A(p,p:n);
      #A(lpiv,p:n) = aux;
      A(p,p:n) = A(lpiv, p:n);
      A(lpiv,p:n)  = aux;
      
      aux = b(p);
      b(p) = b(lpiv);
      b(lpiv) =  aux;
    end
    for i = p+1:p+1
      tp = A(i,p)/A(p,p);
      A(i,p) = 0;
      for j = p+1:n
        A(i,j) = A(i,j) - tp*A(p,j);
      end
      b(i) = b(i) - tp*b(p);
    end
  end
  x = SST(A,b);
endfunction