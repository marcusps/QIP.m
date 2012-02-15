function m = rowinv(v,r,c)

% QIP.OPEN_SYSTEMS.ROWINV   Transforms a vector into a matrix
% requires: nothing
% author: Marcus da Silva
%
%    M = rowinv(V,R,C) reshapes a vector V into a matrix with R
%    rows and C columns, taking V to be the row-major vectorization
%    of a matrix.
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

m = reshape(v,r,c);
