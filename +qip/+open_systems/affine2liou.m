function a=affine2liou(l)
% AFFINE2LIOU
% author: Marcus P. da Silva
% requires: nothing
%
%   AFFINE2LIOU( A ) maps a DxD superoperator A in the affine representation
%   into a superoperator L L in Liouville representation
%   (i.e. Liouville representation in the cannonical column-stacked
%   vectorization basis).
%
%   This representation is called affine because it describes an
%   affine map of the Block sphere and its generalizations, where
%   the block A(2:D,:) gives the displacement of the vector Pauli
%   expectations, while the block A(2:D,2:D) gives the linear
%   transformation of the Pauli expectations.
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

import qip.pauli
import qip.idx2pauli
import qip.open_systems.vec

D = length(l);
n = log2(D)/2;
d = 2^n;

% we take a very inneficient approach:
% first we compute the matrix transformation
b = zeros(D);
bi = eye(D);
for ii=1:D,
  mu = bi(:,ii);
  for jj=0:(D-1),
    paulij = idx2pauli(arrayfun(@(s) str2num(s),dec2base(jj,4,n)))/sqrt(d);
    b(jj+1,ii) = vec(paulij)'*mu/norm(vec(paulij));     
  end
end

% and then we apply the inverse
a=b'*l*b;

