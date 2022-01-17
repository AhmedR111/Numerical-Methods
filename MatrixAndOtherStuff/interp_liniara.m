function val = inter_liniara(c, x, y)
    n = length(x);
    for i = 1 : n-1
        if c >= x(i) && c <= x(i+1)
            a = (y(i+1) - y(i)) / (x(i+1) - x(i));
            b = (y(i) * x(i+1) - x(i) * y(i+1)) / (x(i+1) - x(i));
            val = a * c + b
            break;
        endif
    endfor
endfunction