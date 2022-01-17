## Copyright (C) 2019 Razvan
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} FCS (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Razvan <Razvan@RAZVAN-PC>
## Created: 2019-05-14

function I = FCS (f,a,b,N)
 %FORMULA COMPUSA SIMPSON
 h = (b-a)/N;
 
 suma1 = 0;
 suma2 = 0;
 
 for i = 1:N/2
   suma1 += f(a +(2*i - 1)*h);
 endfor
 
 for i = 1:(N/2) - 1
   suma2 += f(a + 2*i*h);
 endfor
 
 I = (h/3) * (f(a) + f(b) + 4*suma1 + 2*suma2);

endfunction
