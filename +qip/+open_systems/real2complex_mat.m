function m = real2complex_mat( in )

% QIP.OPEN_SYSTEMS.REAL2COMPLEX_MAT  Maps a complex valued matrix to its real-valued representation.
% requires: nothing
% author: Marcus da Silva
%
%    M = qip.open_systems.real2complex_mat( C ) maps a real-valued
%    representation of a complex matrix back into a complex-valued representation 
%    by mapping the diagonals blocks of C to the real part of M,
%    and the off-diagonal blocks of C to the imaginary part of M.
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

m = kron(real(in),eye(2)) + kron(imag(in),[0 -1; 1 0]);
