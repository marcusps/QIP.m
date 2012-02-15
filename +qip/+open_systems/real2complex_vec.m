function m = real2complex_vec( in ) % -*- mode: octave -*-
% QIP.OPEN_SYSTEMS.REAL2COMPLEX_VEC  Maps a real-valued representation of a complex vector to its complex-valued representation.
% requires: nothing
% author: Marcus da Silva
%
%    M = REAL2COMPLEX_VEC( C ) Maps a real-valued representation of a complex-valued 
%    matrix into a real-valued representation by mapping the even indices of C to the
%    real part of M, and the odd indices of C to the complex part of M.
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
  
m = in(1:2:length(in)) + 1j * in(2:2:length(in));