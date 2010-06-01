function phi = choi_matrix( d )

% QIP.RANDOM.CHOI_MATRIX  Random Choi-Jamiolkowski matrix
% author: Marcus da Silva
% requires: qip.random.density_matrix
%
%   M = qip.random.choi_matrix(D) returns a Choi-Jamiolkowski
%   matrix M for a random completely positive superoperator acting
%   on a D dimensional Hilbert space.
%
%   This is done by generating a random density matrix acting on a
%   D^2 space, such that the eigenvalues are uniformly distributed
%   on the [0,1/D^2] interval, and the diagonalizing unitary is
%   choosen from the Haar distribution.
% 
%   See also: qip.random.density_matrix, qip.random.unitary
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

phi = qip.random.mixed_state(d*d);
