function M = tensor(varargin)

% TENSOR  Tensor product
% author: Toby Cubitt
% requires: none
%
%   m = TENSOR(a,b,c,...) returns the kronecker product of its arguments.
%
%   Each argument should either be a matrix, or a cell array containing a
%   matrix and an integer. In the latter case, the integer specifies the
%   repeat count for the matrix, e.g. TENSOR(a,{b,3},c) =
%   TENSOR(a,b,b,b,c).
% 
%   See also: kron
%
%   Copyright (C) 2010  Toby Cubitt   <toby@dr-qubit.org>
% 
%   License: Distributed under GPL 2.0
%            http://creativecommons.org/licenses/GPL/2.0/
%            http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

%  Copyright (C) 2010   Toby Cubitt   <toby@dr-qubit.org>
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


M = 1;
for j = 1:nargin
  if iscell(varargin{j})
    for k = 1:varargin{j}{2}
      M = kron(M,varargin{j}{1});
    end
  else
    M = kron(M,varargin{j});
  end
end
