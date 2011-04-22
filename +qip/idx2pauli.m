function p = idx2pauli( v )
% IDX2PAULI
% author: Marcus P. da Silva
% requires: nothing
%
%   IDX2PAULI( v ) converts an array of Pauli indices to a Pauli
%   matrix in the computational basis.
%
%   Copyright (C) 2010  Marcus P. da Silva  http://github.com/marcusps
% 
%   License: Distributed under GPL 2.0
%            http://creativecommons.org/licenses/GPL/2.0/
%            http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

%  Copyright (C) 2010  Marcus P. da Silva  http://github.com/marcusps
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
%  along with this program; if not, see
%  <http://www.gnu.org/licenses/>.
p = pauli(v(1)); 
if length(v) >= 2,
  for k=2:length(v),
    p = kron( p, pauli(v(k)) );
  end
end
