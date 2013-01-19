function M = choi_liou_involution( c )
% QIP.OPEN_SYSTEMS.CHOI_LIOU_INVOLUTION
% requires: nothing
% author: Marcus da Silva
%
%    L = qip.open_systems.choi_liou_involution(A) shuffles the matrix
%    elements of A such that if A is a Choi matrix, L is the corresponding
%    Liouville matrix (and if A is the Liouville matrix, L is the
%    Choi). We assume a column major Liouvillian representation of
%    the superoperator.
%
%    This operation is an involution -- it is self inverse.
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
s = size(c);
d = s(1);
sd = sqrt(d);
M = c;

M = reshape(permute(reshape(c,sd,sd,sd,sd),[1,3,2,4]),d,d);

