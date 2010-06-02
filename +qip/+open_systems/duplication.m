function du = duplication(n)

% QIP.OPEN_SYSTEMS.DUPLICATION   Generated a duplication matrix.
% requires: nothing
% author: Marcus da Silva
%
%    M = DUPLICATION(D) Generates a duplication matrix acting on the result of 
%    an elimination of a vectorization of a D by D matrix. When M multiplies such a vector, 
%    the result is a larger vector consisting of all parts of the symmetric matrix, 
%    in vectorized form.
%
%    See also: vec, row, rowinv, reshape
%
%   Copyright (C) 2010   Marcus P da Silva http://github.com/marcusps
% 
%   License: Distributed under GPL 2.0
%            http://creativecommons.org/licenses/GPL/2.0/
%            http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

%  Copyright (C) 2010   Marcus P da Silva http://github.com/marcusps
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

% duplication
du = zeros(n*n,n*(n+1)/2);
for j=1:rows(du)
  rowo = floor((j-1)/n);
  colo = mod(j-1,n);
  if (rowo <= colo)
    du(j,vechindex(rowo,colo,n)+1) = 1;
  else
    du(j,vechindex(colo,rowo,n)+1) = 1;
  end
end
