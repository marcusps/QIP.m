function L = hamiltonian( h )

% QIP.OPEN_SYSTEMS.HAMILTONIAN  Liouvillian representation of hamiltonian superoperator
% requires: qip.open_systems.liou
% author: Marcus da Silva
%
%    L = qip.open_systems.hamiltonian(A) returns a column-major
%    liouville representation of a hamiltonian operator A.
%
%    See also: liou_row, vec, row
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

L = -1j * qip.open_systems.liou(h,eye(size(h))) + 1j * qip.open_systems.liou(eye(size(h)),h);
