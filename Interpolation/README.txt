RAMADAN AHMAD
GRUPA 311CB
TEMA-1 2021 METODE NUMERICE
Interpolare aplicata pe imagini

=============TASK 1=============
Interpolare nearest-neighbour
================================

In loc sa calculeze valori noi intermediare, pur si simplu se cauta cel mai apropiat punct
 cunoscut si se replica valoarea functiei din acesta.

1.1- nn_2x2(f, STEP = 0.1)
	Aplica interpolare nearest-neighbour pe imaginea 2x2 f cu puncte intermediare echidistante.
	f are valori cunoscute in punctele (1, 1), (1, 2), (2, 1) si (2, 2). 
	Parametrii:
	- f = imaginea ce se doreste sa fie interpolata
	- STEP = distanta dintre doua puncte succesive
	aplica interpolare nearest-neighbour pe o imagine alb-negru f 2x2 cu
	puncte intermediare echidistante, avand intre ele distanta data de STEP.
	
1.2 - nn_2x2_RGB(img, STEP = 0.1)
	Aplica interpolare nearest neighbour pe imaginea 2x2 img cu puncteintermediare echidistante.
	img este o imagine colorata RGB.
	pentru extragerea canalelor am folosit img(:,:,x)  x-1,2,3 - red,green,blue.

1.3 - nn_resize(I, p, q)
	Upscaling de imagine folosind algoritmul de interpolare nearest-neighbour
	Transforma imaginea I din dimensiune m x n in dimensiune p x q.
	La sfarsit se converteste matricea rezultata la uint8.
1.4 -  nn_resize_RGB(img, p, q)
	Redimensioneaza imaginea img a.i. aceasta sa fie de dimensiune p x q.
    	Imaginea img este colorata.
   	Practic, apeleaza de 3 ori functia nn pe fiecare canal al imaginii
	Similar,pentru extragerea canalelor am folosit img(:,:,x)  x-1,2,3 - red,green,blue. 
	
=============TASK 2=============
Interpolare biliniara
================================

In urma interpolarii biliniare, imaginea rezultata este mult mai "lina" decat interpolarea nearest-
neighbour. Acest lucru poate fi atat un avantaj, cat si un dezavantaj, pentru ca face ca toate
muchiile sa fie mult mai nedefnite.

2.1 - surrounding_points(n, m, x, y)
	Calculeaza cele 4 puncte ce contin in interior (x, y)
    Primeste si dimensiunea unei imagini m x n, pentru a asigura ca nu se
	iese din matrice.
	
2.2 - bilinear_coef(f, x1, y1, x2, y2)
	Calculeaza coeficientii a pentru interpolarea biliniara intre punctele
	(x1, y1), (x1, y2), (x2, y1) si (x2, y2)
	
2.3 - bilinear_2x2(f, STEP = 0.1)
	Aplica interpolare biliniara pe imaginea 2x2 f cu puncte intermediare
	echidistante.
	f are valori cunoscute in punctele (1, 1), (1, 2), (2, 1) si (2, 2).
	Parametrii:
	- f = imaginea ce se doreste sa fie interpolata
	- STEP = distanta dintre doua puncte succesive
	
2.4 - bilinear_2x2_RGB(img, STEP = 0.1)
	Aplica interpolare biliniara pe imaginea 2x2 img cu puncte intermediare
	echidistante, cu precizarea ca img este o imagine colorata RGB.
	f are valori cunoscute in punctele (1, 1), (1, 2), (2, 1) si (2, 2).
	Practic, apeleaza bilinear_2x2_interpolation pe fiecare canal al imaginii
	img si reconstruieste imaginea colorata la final
	Parametrii:
	- img = imaginea 2x2 RGB care doreste sa fie interpolata
	- STEP = distanta dintre doua puncte succesive
	Similar,pentru extragerea canalelor am folosit img(:,:,x)  x-1,2,3 - red,green,blue. 
	
2.5 - bilinear_resize(I, p, q)
	Upscaling de imagine folosind algoritmul de interpolare biliniara
	Transforma imaginea I alb-negru din dimensiune m x n in dimensiune p x q
	
2.6 - bilinear_resize_RGB(img, p, q)
	Redimensioneaza imaginea img a.i. aceasta sa fie de dimensiune p x q.
	Imaginea img este colorata.
	Practic, apeleaza de 3 ori functia bilinear_resize pe fiecare canal al imaginii.
	Similar,pentru extragerea canalelor am folosit img(:,:,x)  x-1,2,3 - red,green,blue. 
	
2.7 - bilinear_rotate(I, rotation_angle)
	Roteste imaginea alb-negru I de dimensiune m x n cu unghiul
	rotation_angle, aplicand interpolare biliniara.
	rotation_angle este exprimat in radiani.
	
2.8 - bilinear_rotate_RGB(img, rotation_angle)
	Aplica interpolare bilineara pentru a roti o imagine RGB cu un unghi dat.
	Practic, apeleaza de 3 ori functia bilinear_rotate pe fiecare canal al imaginii.
	Similar,pentru extragerea canalelor am folosit img(:,:,x)  x-1,2,3 - red,green,blue. 
	
=============TASK 3=============
Interpolare bicubica
================================	

interpolarea bicubica pare sa pastreze mai bine detaliile imaginii, in timp ce
interpolarea biliniara are tendinta de a pierde muchiile bine defnite. Acest lucru vine, desigur,
cu costul unui algoritm mai complicat si a unui timp de executie mai incet.

3.1 - surrounding_points(n, m, x, y)
	Calculeaza cele 4 puncte ce contin in interior (x, y)
    Primeste si dimensiunea unei imagini m x n, pentru a asigura ca nu se
	iese din matrice.

3.2 - bicubic_coef(f, Ix, Iy, Ixy, x1, y1, x2, y2)
	Calculeaza coeficientii de interpolare bicubica pentru 4 puncte alaturate
	calculeaza matricile intermediare,converteste matricile intermediare la double
	si apoi calculeaza matricea finala.
	
3.3 - precalc_d(I)
	Prealculeaza matricile Ix, Iy si Ixy ce contin derivatele dx, dy, dxy ale 
    imaginii I pentru fiecare pixel al acesteia
	
3.4 - fy(f, x, y)
	Aproximeaza derivata fata de y a lui f in punctul (x, y).
	
3.5 - fx(f, x, y)
	Aproximeaza derivata fata de x a lui f in punctul (x, y).

3.6 - fxy(f, x, y)
	Aproximeaza derivata fata de x si y a lui f in punctul (x, y).

3.7 - bicubic_resize(I, p, q)
	Upscaling de imagine folosind algoritmul de interpolare bicubica
	Transforma imaginea I din dimensiune m x n in dimensiune p x q.
	
3.8 - bicubic_resize_RGB(img, p, q)
	Redimensioneaza imaginea img a.i. aceasta sa fie de dimensiune p x q.
	Imaginea img este colorata.
	Practic, apeleaza de 3 ori functia bicubic_resize pe fiecare canal al imaginii.
	Similar,pentru extragerea canalelor am folosit img(:,:,x)  x-1,2,3 - red,green,blue. 
	
In urma rularii comenzii checker_nearest_neighbour/checker_bilinear/checker_bicubic am obtinut punctajul [95/95]
Pe Linux folosind masina virtuala.
	
Surse folosite care m-au ajutat la realizarea temei: 
[1] PDF-ul temei.
[2] Image rotation - https://www.sciencedirect.com/topics/computer-science/image-rotation.
[3] Wikipedia, interpolare Nearest-neighbor. https://en.wikipedia.org/wiki/Nearest-neighbor_interpolation.
[4] Wikipedia, interpolare bilineara. https://en.wikipedia.org/wiki/Bilinear_interpolation.
[5] Wikipedia, interpolare bicubica. https://en.wikipedia.org/wiki/Bicubic_interpolation.
[6] Legendarul indian man de pe youtube.

Feedback despre tema:

		Dupa parerea mea, aceasta tema a fost una dintre singurele teme care mi s au parut distractive din pricina 
	aplicabilitatii in viata de zi cu zi, dar nu numai , de asemenea mi s a parut foarte frumos PDF-ul care dadea
	formulele "mura-n gura", exact asa cum imi place mie :))), Daca ar fi toate temele asa, viata ar fi fost mult mai 
	frumoasa ! https://gyazo.com/cfd53ab574c60d76fd8f04425f58f920 <3. In rest, am numai ganduri pozitive despre aceasta 
	tema! Va multumesc inca odata, deoarece am crezut ca o sa fie mult mai rau :))).  
