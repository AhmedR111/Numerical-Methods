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
## @deftypefn {} {@var{retval} =} Romberg (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Razvan <Razvan@RAZVAN-PC>
## Created: 2019-05-14

function X = Romberg (f,b,a,N)
  I = [];
  
  for i=1:N
    I(i,1) = FCT(@f,b,a,2^(i-1));
  endfor
  
  for j = 2:N
    for i = j:N
      I(i,j) = (4^(j-1) * I(i,j-1) - I(i-1,j-1))/(4^(j-1) - 1);
    endfor
  endfor
  X = I(N,N);
endfunction
