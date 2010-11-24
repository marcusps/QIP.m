function rho = mixed_state(d)
% QIP.RANDOM.MIXED_STATE  Random density matrix
% author: Marcus da Silva
% requires: qip.random.unitary
%
%   M = qip.random.mixed_state(D) returns a D by D hermitian matrix
%   D with unity trace.
%
%   The matrix is generated as follows: the eigenvalues are
%   randomly chosen from a uniform distribution on the probability
%   simplex (known as the DIrichlet distribution), and the
%   diagonalization transformation is chosen from the Haar
%   distribution of unitaries.
% 
%   See also: qip.random.unitary
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

u = qip.random.unitary(d);
e = qip.random.dirichlet(ones(1,d),1);
rho = u*diag(e)*u';
