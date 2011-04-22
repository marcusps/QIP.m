function c = concurrence( R )
% CONCURRENCE
% author: Marcus P. da Silva
% requires: nothing
%
%   CONCURRENCE(R) computes the concurrence of a two qubit density
%   matrix R. 
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
import qip.*
y = qip.pauli(2);
Rt = kron(y,y)*conj(R)*kron(y,y);
e = eig(R*Rt);
c = max(0,[-1 -1 -1 1]*e);
