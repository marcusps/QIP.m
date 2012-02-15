function du = duplication_conj(n)

% QIP.OPEN_SYSTEMS.DUPLICATION_CONJ   Generated a duplication and conjugation matrix.
% requires: qip.open_systems.complex2real_mat, qip.open_systems.duplication
% author: Marcus da Silva
%
%    M = DUPLICATION_CONJ(D) Generates a duplication matrix acting on the result of 
%    an elimination of a vectorization of a D by D matrix. When M multiplies such a vector, 
%    the result is a larger vector consisting of all parts of the
%    hermitian matrix, in vectorized form.
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

du = eye(2*n*n);
% row major storage
offset = @(r,c,d) (r-1)*d+c;

for c=1:n,
  for r=1:(c-1),
    o = offset(c,r,n);
    du(2*o,2*o) = -1;
  end
end

du = du*qip.open_systems.complex2real_mat(qip.open_systems.duplication(n));
