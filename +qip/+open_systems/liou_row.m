function l = liou_row(left,right)

% LIOU_ROW   Row-major liouvillian representation of left and right linear operations
% requires: nothing
% author: Marcus da Silva
%
%    L = LIOU_ROW(A,B) returns the row major liouvilian representation of a
%    linear transformation that acts on a matrix on the right with
%    A and on the left with B. In other words, ROW(A*M*B) = LIOU_ROW(A,B)*ROW(M)
%
%    See also: liou, vec, row
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

l = kron(left,transpose(right));
