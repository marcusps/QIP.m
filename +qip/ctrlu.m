function c = ctrlu( u, n )
% CTRLU
% author: Marcus P. da Silva
% requires: nothing
%
%   CTRLU(u) returns a unitary corresponding to the controlled-u operation.
%
%   CTRLU(u,n) returns a unitary corresponding to the n-bit
%   controlled-u operation (that is, u acting conditioned on the
%   state of n qubits)
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
if nargin < 2 || isempty(n)
  n = 1;
end
c = sparse(blkdiag(eye(2^n),u));
