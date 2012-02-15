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
%   TODO: The output is does not correspond to a trace preserving map
%
%   See also: qip.random.density_matrix, qip.random.unitary
%
%   Copyright (C) 2010   Marcus P da Silva http://github.com/marcusps
% 
%   License: Distributed under Apache License, Version 2.0
%            http://www.apache.org/licenses/LICENSE-2.0
%

%    Copyright 2012 Marcus P. da Silva
% 
%    Licensed under the Apache License, Version 2.0 (the "License");
%    you may not use this file except in compliance with the License.
%    You may obtain a copy of the License at
% 
%        http://www.apache.org/licenses/LICENSE-2.0
% 
%    Unless required by applicable law or agreed to in writing, software
%    distributed under the License is distributed on an "AS IS" BASIS,
%    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%    See the License for the specific language governing permissions and
%    limitations under the License.

phi = qip.random.mixed_state(d*d);
