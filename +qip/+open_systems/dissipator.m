function l = dissipator( a ) 

% QIP.OPEN_SYSTEMS.DISSIPATOR  Liouvillian representation of dissipator superoperator
% requires: nothing
% author: Marcus da Silva
%
%    L = qip.open_systems.dissipator(A) returns a column-major
%    liouville representation of a set of dissipators (if A is
%    a cell containing various operators) or a single dissipator
%    operator (if A is a single operator).
%
%    See also: liou_row, vec, row
%
%   Copyright (C) 2010   Marcus P da Silva   <marcus.ps+github@gmail.com>
% 
%   License: Distributed under GPL 2.0
%            http://creativecommons.org/licenses/GPL/2.0/
%            http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

%  Copyright (C) 2010   Marcus P da Silva   <marcus.ps+github@gmail.com>
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

diss = @(b) liou(b,b')-.5*liou(b'*b,eye(size(b)))-.5*liou(eye(size(b)),b'*b);

if iscell(a),
  l = liou(zeros(size(a{1})),zeros(size(a{1})));
  for k = 1:length(a),
    l = l + diss(a{k});
  end
else
  l = diss(a);
end