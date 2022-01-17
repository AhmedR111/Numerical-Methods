function val = SplineC1(x, y, dy, xi)
  %yi = zeros(length(y))
  %yi = zeros(length(x));
  n = length(x);
  for i = 1 : n - 1
    h(i) = x(i + 1) - x(i);
    a(i) = y(i);
    d(i) = y(i + 1);
    b(i) = y(i) + h(i)/3 * dy(i);
    c(i) = y(i + 1) - h(i)/3 * dy(i + 1);
  endfor
  
  for i = 1 : n - 1
    
    if xi >= x(i) && xi <= x(i+1)
      t = (xi - x(i)) / (x(i + 1) - x(i));
      val = a(i) * (1 - t)^3 + b(i) * 3 * t * (1 - t)^2 + c(i) * 3 * t^2 * (1 - t) + t^3 * d(i);
      break;
    endif
  endfor
endfunction