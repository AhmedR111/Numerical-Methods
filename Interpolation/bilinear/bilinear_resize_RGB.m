function out = bilinear_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img a.i. aceasta sa fie de dimensiune p x q.
    % Imaginea img este colorata.
    % Practic, apeleaza de 3 ori functia nn pe fiecare canal al imaginii.
    % =========================================================================

    % TODO: extrage canalul rosu al imaginii
    
    canal1=img(:,:,1);

    % TODO: extrage canalul verde al imaginii
    
    canal2=img(:,:,2);

    % TODO: extrace canalul albastru al imaginii
    
    canal3=img(:,:,3);

    % TODO: aplica functia nn pe cele 3 canale ale imaginii
    
    out1=bilinear_resize(canal1,p,q);
    out2=bilinear_resize(canal2,p,q);
    out3=bilinear_resize(canal3,p,q);

    % TODO: formeaza imaginea finala cu cele 3 canale de culori
    
    out=cat(3,out1,out2,out3);
    
    % Hint: functia cat

endfunction