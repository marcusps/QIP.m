function m = real2complex_vec( in ) % -*- mode: octave -*-

% QIP.OPEN_SYSTEMS.REAL2COMPLEX_VEC  Maps a real-valued representation of a complex vector to its complex-valued representation.
% requires: nothing
% author: Marcus da Silva
%
%    M = REAL2COMPLEX_VEC( C ) Maps a real-valued representation of a complex-valued 
%    matrix into a real-valued representation by mapping the even indices of C to the
%    real part of M, and the odd indices of C to the complex part of M.
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
  
m = in(1:2:length(in)) + 1j * in(2:2:length(in));