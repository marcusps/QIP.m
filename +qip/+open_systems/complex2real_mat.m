function m = complex2real_mat( in ) % -*- mode: octave -*-
% QIP.OPEN_SYSTEMS.COMPLEX2REAL_MAT  Maps a complex valued matrix to its real-valued representation.
% requires: nothing
% author: Marcus da Silva
%
%    M = qip.open_systems.complex2real_mat( C ) Maps a complex valued matrix into a real-valued representation 
%    by mapping the real part of C to diagonals blocks of M, and the imaginary parts to the 
%    antisymmetric off-diagonal blocks of M.
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