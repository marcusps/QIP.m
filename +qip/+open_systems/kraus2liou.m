function l = kraus2liou( a ) 
% QIP.OPEN_SYSTEMS.KRAUS2LIOU  Liouvillian representation of Kraus operators
% requires: qip.open_systems.liou
% author: Marcus da Silva
%
%    L = qip.open_systems.kraus2liou(A) returns a column-major
%    liouville representation of a set of Kraus operators (if A is
%    a cell containing various operators) or a single Kraus
%    operator (if A is a single operator).
%
%    See also: liou_row, vec, row
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

if iscell(a),
  l = qip.open_systems.liou(zeros(size(a{1})),zeros(size(a{1})));
  for k = 1:length(a),
    l = l + qip.open_systems.liou(a{k},a{k}');
  end
else
  l = qip.open_systems.liou(a,a');
end
