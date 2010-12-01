function M = liou2choi( c )
% QIP.OPEN_SYSTEMS.LIOU2CHOI 
% requires: nothing
% author: Marcus da Silva
%
%    L = qip.open_systems.liou2choi(A) returns the Choi
%    representation of a column major Liouvillian representation of
%    a superoperator. The Jamilkowski state can be obtained by
%    normalizing the Choi matrix (i.e. dividing by the dimension).
%
%    This operation is an involution -- it is self inverse.
%
%    See also: liou, vec, row
%
%   Copyright (C) 2010   Marcus P da Silva http://github.com/marcusps
% 
%   License: Distributed under GPL 2.0
%            http://creativecommons.org/licenses/GPL/2.0/
%            http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

%  Copyright (C) 2010   Marcus P da Silva http://github.com/marcusps
% 
%  This program is free software; you can redistribute it and/or modify
%  it under the terms of the GNU General Public License as published by
%  the Free Software Foundation; either version 3 of the License, or
%  (at your option) any later version.
% 
%  This program is distributed in the hope that it will be useful,
%  but WITHOUT ANY WARRANTY; without even the implied warranty of
%  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%  GNU General Public License for more details.
% 
%  You should have received a copy of the GNU General Public License
%  along with this program; if not, see <http://www.gnu.org/licenses/>.
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
