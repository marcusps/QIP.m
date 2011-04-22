function p = pauli( idx )
% PAULI
% author: Marcus P. da Silva
% requires: nothing
%
%   PAULI(I) returns the Pauli matrix corresponding to the
%   index I. 0 maps to identity, 1 to \sigma_x, 2 to \sigma_y and 3
%   to \sigma_z.
%
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

if idx == 0
  p = [1 0; 0 1];
elseif idx == 1
  p = [0 1; 1 0];
elseif idx == 2
  p = [0 -i; i 0];
elseif idx == 3
  p = [1 0; 0 -1];
else
  p = []
end