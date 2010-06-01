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

l = kron(left,transpose(right));