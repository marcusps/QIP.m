function v = complex2real_vec(in)

% QIP.OPEN_SYSTEMS.COMPLEX2REAL_VEC  Maps a complex-valued column vector to its real-valued representation.
% requires: nothing
% author: Marcus da Silva
%
%    M = COMPLEX2REAL_VEC( C ) Maps a complex valued matrix into a real-valued representation 
%    by mapping the real part of C to the even indices of M, and the imaginary parts to the 
%    off indices of M.
%
%    See also: vec, row, rowinv, reshape
%
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

v = kron(real(in),[1 0]')+kron(imag(in),[0 1]');
