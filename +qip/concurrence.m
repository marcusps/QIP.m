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
% convert to magic basis
% apply complex conjugate
% revert to computational basis
B = 1/sqrt(2) * [ 1  1i  0   0;
                  0   0 1i  1i;
                  0   0 1i -1i;
                 -1 -1i  0   0];
Rm = B'* conj( B * R * B' ) * B;
Rt = kron(y,y)*Rm*kron(y,y);
sR = sqrtm(R);
Rm = sqrtm(sR*Rt*sR);
c = max(0, 2 * max(real(eig(Rm))) - real(trace(Rm)));
