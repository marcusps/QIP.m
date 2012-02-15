function v = complex2real_vec(in)
% QIP.OPEN_SYSTEMS.COMPLEX2REAL_VEC  Maps a complex-valued column vector to its real-valued representation.
% requires: nothing
% author: Marcus da Silva
%
%    M = COMPLEX2REAL_VEC( C ) Maps a complex valued matrix into a real-valued representation 
%    by mapping the real part of C to the even indices of M, and the imaginary parts to the 
%    off indices of M.
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

v = kron(real(in),[1 0]')+kron(imag(in),[0 1]');
