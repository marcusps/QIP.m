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

m = kron(real(in),eye(2)) + kron(imag(in),[0 -1; 1 0]);
