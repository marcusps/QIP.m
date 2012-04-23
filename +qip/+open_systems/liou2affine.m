function a=liou2affine(l)
% LIOU2AFFINE
% author: Marcus P. da Silva
% requires: nothing
%
%   LIOU2AFFINE( L ) maps a DxD superoperator L in Liouville representation
%   into a superoperator A in the affine representation
%   (i.e. Liouville representation in the normalized Pauli basis).
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

d = length(l);
n = log2(d)/2;

a = zeros(size(l));
for i=0:(d-1),
  paulii = idx2pauli(arrayfun(@(s) str2num(s),dec2base(i,4,n)));
  lpi = l * vec(paulii);
  for j=0:(d-1),
    paulij = idx2pauli(arrayfun(@(s) str2num(s),dec2base(j,4,n)))/sqrt(d);
    a(j+1,i+1) = vec(paulij)'*lpi; 
  end
end