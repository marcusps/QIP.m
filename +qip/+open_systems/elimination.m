function el = elimination(n)

% QIP.OPEN_SYSTEMS.ELIMINATION   Generates an elimination matrix.
% requires: nothing
% author: Marcus da Silva
%
%    M = ELIMINATION(D) Generates an elimination matrix acting of the 
%    vectorization of a D by D matrix. When M multiplies such a vector, 
%    the result is a smaller vector consisting of only the upper-triangular
%    part of the matrix, in vectorized form.
%
%    See also: vec, row, rowinv, reshape
%
%   Copyright (C) 2010   Marcus P da Silva   <marcus.ps+github@gmail.com>
% 
%   License: Distributed under GPL 2.0
%            http://creativecommons.org/licenses/GPL/2.0/
%            http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

%  Copyright (C) 2010   Marcus P da Silva   <marcus.ps+github@gmail.com>
% 
%  This program is free software; you can redistribute it and/or modify
%  it under the terms of the GNU General Public License as published by
%  the Free Software Foundation; either version 3 of the License, or
%  (at your option) any later version.
% 
%  This program is distributed in the hope that it will be useful,
%  but WITHOUT ANY WARRANTY; without even the implied warranty of
%  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%  GNU General Public License for more details.
% 
%  You should have received a copy of the GNU General Public License
%  along with this program; if not, see <http://www.gnu.org/licenses/>.

vechindex = @(r,c,n) n * r + c - r*(r+1)/2;

el = zeros(n*(n+1)/2,n*n);
cols = size(el);
cols = cols(2);
for j=1:cols,
  rowo = floor((j-1)/n);
  colo = mod(j-1,n);
  if (rowo <= colo)
    el(vechindex(rowo,colo,n)+1,j) = 1;
  end
end
