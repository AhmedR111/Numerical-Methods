function [Ix, Iy, Ixy] = precalc_d(I)
    % =========================================================================
    % Prealculeaza matricile Ix, Iy si Ixy ce contin derivatele dx, dy, dxy ale 
    % imaginii I pentru fiecare pixel al acesteia
    % =========================================================================
    
    % obtine dimensiunea imaginii
    [m n nr_colors] = size(I);
    
    % TODO: fa cast matricii I la double
    
    I=double(I);

    % TODO: calculeaza matricea cu derivate fata de x Ix

    Iy=double(zeros(m,n));
    
    for y= 1 : m
      for x = 1 : n
        if((y==1) || (y==m))
          Iy(y,x)=0;
        else
          Iy(y,x)=fx(I,y,x);
        endif
      endfor
    endfor
    
    % TODO: calculeaza matricea cu derivate fata de y Iy
    
    Ix=double(zeros(m,n));

    for y= 1 : m
      for x = 1 : n
        if((x==1) || (x==n))
          Ix(y,x)=0;
        else
          Ix(y,x)=fy(I,y,x);
        endif
      endfor
    endfor   
    
    % TODO: calculeaza matricea cu derivate fata de xy Ixy
    
    Ixy=double(zeros(m,n));

    for y= 1 : m
      for x = 1 : n
        if((y == 1) ||(y == m) || (x == 1) || (x == n))
          Ixy(y,x)=0;
        else
          Ixy(y,x)=fxy(I,y,x);
        endif
      endfor
    endfor      

endfunction