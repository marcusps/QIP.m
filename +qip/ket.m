function v = ket( m, d )
% KET
% author: Marcus P. da Silva
% requires: nothing
%
%   KET(V) returns the basis vector corresponding to the binary
%   string v.
%
%   KET(N,D) returns the Nth basis vector corresponding in a
%   Hilbert space of dimension D.
%
%   Copyright (C) 2010  Marcus P. da Silva  http://github.com/marcusps
% 
%   License: Distributed under GPL 2.0
%            http://creativecommons.org/licenses/GPL/2.0/
%            http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

%  Copyright (C) 2010  Marcus P. da Silva  http://github.com/marcusps
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
%  along with this program; if not, see
%  <http://www.gnu.org/licenses/>.
v = [];
if ischar(m),
  v = flipud([zeros([1,2^length(m)-bin2dec(m)-1]),1,zeros([1, ...
                      bin2dec(m)])]');
elseif isnumeric(m) & isnumeric(d) & m<d & m>=0,
  rshift = @(v,n)  v([(length(v)-n+1):length(v),1:(length(v)-n)]);
  ket_zero = @(d) [1;zeros(d-1,1)];
  v = rshift(ket_zero(d),m);
end
