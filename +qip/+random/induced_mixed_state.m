function rho = induced_mixed_state(d,dr)
% QIP.RANDOM.INDUCED_MIXED_STATE  Random density matrix with uniformly
%    distributed purified density matrix.
% author: Marcus da Silva
% requires: qip.random.pure_state
%
%   M = qip.random.hilbert_schmidt_mixed_state(D,Da) returns a D by
%   D hermitian matrix with unity trace, sampled according to the
%   unitarily invariant measure of pure states on a hilbert space
%   of dimension D*Da.
%
%   See also: qip.random.pure_state, qip.random.dirichlet_mixed_state 
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

psi = qip.projector(qip.random.pure_state(d*dr));
rho = qip.partial_trace(psi,2,[d,dr]);
