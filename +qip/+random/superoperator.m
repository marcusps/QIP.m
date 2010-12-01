function phis = superoperator(d)
% QIP.RANDOM.SUPEROPERATOR  Liouvillian representation of Kraus operators
% requires: qip.open_systems.choi2liou, qip.random.choi_matrix
% author: Marcus da Silva
%
%    L = qip.random.superoperator(d) returns the column-major
%    liouville representation of a random superoperator acting on a d
%    dimensional Hilbert space. The superoperator is chosen by
%    generating a random Choi matrix, and then shuffling the matrix
%    elements accordingly.
%
%    IMPORTANT: There is no guarantee that the generated superoperator
%    is trace preserving.
%
%    See also: choi2liou, choi_matrix
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
phis = qip.open_systems.choi2liou(qip.random.choi_matrix(d));
