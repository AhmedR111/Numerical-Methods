function [ Q R x ] = Givens_Tridiag(A,b)
  [m n] = size(A);
  Q = eye(m);
  for k = 1:min(m-1,n)
    %Pt eficienta , am sters ":m"
    for l = k+1:n-k
      [c s] = detrot(A(:,k),k,l);
      t = [c -s; s c]*[A(k,k:min(k+2:n));A(l,k:min(k+2:n))];
      A(k,k:min(k+2:n))=t(1,:);
      A(l,k:min(k+2:n))=t(2,:);
      t=[c -s;s c]*[b(k);b(l)];
      b(k)=t(1);
      b(l)=t(2);
      t=[c -s; s c]*[Q(k,1:m);Q(l,1:m)];
      Q(k,1:m)=t(1,:);
      Q(l,1:m)=t(2,:);
    endfor
  endfor
  R=A;
  Q=Q';
  x=SST(R,b);
endfunction