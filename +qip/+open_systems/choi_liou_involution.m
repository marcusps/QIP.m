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
M = c;

index = @(a,b) (a-1)*sqrt(s(1))+b;

for n=1:sqrt(s(1)),
  for m=1:sqrt(s(1)),
    for o=1:sqrt(s(1)),
      for p=n+1:sqrt(s(1)),
        % this swaps M_{nm,op} with M_{pm,on}
        temp = M( index(n,m), index(o,p) );
        M( index(n,m), index(o,p) ) = ...
            M( index(p,m), index(o,n) );
        M( index(p,m), index(o,n) ) = temp;
      end
    end
  end
end
