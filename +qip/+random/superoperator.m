function phis = superoperator(varargin)
% QIP.RANDOM.SUPEROPERATOR  Random trance preserving CP map
% requires: qip.ket, qip.bra, qip.random.unitary, kron
% author: Marcus da Silva
%
%    L = qip.random.superoperator(d,e) returns the column-major
%    liouville representation of a random superoperator acting on a d
%    dimensional Hilbert space, with an E dimensional environment. 
%    The superoperator is chosen by generating Haar distributed
%    unitary acting on the joint system, and performing a partial trace.
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
d = varargin{1};
if length(varargin)>1,
  e = varargin{2};
  if e>d,
    e = d;
  end
else
  e = d;
end
u=qip.random.unitary(d*e);
ey=eye(d);
r=u*kron(ey,qip.ket(0,e));
phis=zeros(d*d);
for k=0:(e-1),
  phis=phis+qip.open_systems.kraus2liou( kron(ey,qip.bra(k,e))*r );
end
