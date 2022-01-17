function [j] = jl8(x)
j=zeros(2);
j(1,1)=1;
j(1,2)=2;
j(2,1)=2*(x(1));
j(2,2)=8*(x(2));
j;
endfunction