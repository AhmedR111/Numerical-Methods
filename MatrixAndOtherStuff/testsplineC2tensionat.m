%x = 0:pi/3:7*pi;
	%y = sin(x)+cos(3*x);
  %dy1 = cos x - 3 sin 3x
  %dy1 = 1;
  %dyn = -1;
	%xi = 0:pi/15:7*pi;

  x1 = [1 2 5 6 7 8 10 13 17];
  y1 = [3 3.7 3.9 4.2 5.7 6.6 7.1 6.7 4.5];
  dy11 = 1;
  dy1n = -0.67;
  xi1 = 1:0.5:17;
  
  x2 = [17 20 23 24 25 27 27.7];
  y2 = [4.5 7 6.1 5.6 5.8 5.2 4.1];
  dy21 = 3;
  dy2n = -4;
  xi2 = 17:0.5:27.7;
  
  x3 = [27.7 28 29 30];
  y3 = [4.1 4.3 4.1 3];
  dy31 = 0.33;
  dy3n = -1.5;
  xi3 = 27.7:0.5:30;
  
  figure 69;
  hold on;
  
	for i = 1 : length(xi1)
		yi1(i) = feval('splineC2_tensionat', xi1(i), x1, y1, dy11, dy1n);
	endfor
	
	plot(x1, y1, 'g-o', xi1, yi1, 'r-*');
	legend ('data', 'spline C2 tensionat');
  
  for i = 1 : length(xi2)
		yi2(i) = feval('splineC2_tensionat', xi2(i), x2, y2, dy21, dy2n);
	endfor
	
	plot(x2, y2, 'g-o', xi2, yi2, 'r-*');
	legend ('data', 'spline C2 tensionat');
  
  for i = 1 : length(xi3)
		yi3(i) = feval('splineC2_tensionat', xi3(i), x3, y3, dy31, dy3n);
	endfor
	
	plot(x3, y3, 'g-o', xi3, yi3, 'r-*');
	legend ('data', 'spline C2 tensionat');
	axis([0 30],[0 7]);