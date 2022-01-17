function dreapta_regresie(x,y)
  hold on;
  plot(x,y,'r*');
  medx = mean(x);
  medy = mean(y);
  dif_x = x - medx;
  dif_y = y - medy;
  b = sum(dif_x.* dif_y) / sum(dif_x.^2);
  a = medy - b*medx;
  y_c = a + b*x;
  plot(x, y_c);
  for i = 1 : length(x)
    plot([x(i) x(i)], [y(i) y_c(i)]);
  endfor
  hold off
  MAE = sum(abs(y - y_c))/length(x)
endfunction