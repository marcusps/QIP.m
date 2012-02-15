function rho = induced_mixed_state(d,dr)
% QIP.RANDOM.INDUCED_MIXED_STATE  Random density matrix with uniformly
%    distributed purified density matrix.
% author: Marcus da Silva
% requires: qip.random.pure_state, partial_trace
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

psi = qip.projector(qip.random.pure_state(d*dr));
rho = partial_trace(psi,2,[d,dr]);
