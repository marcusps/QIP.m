function m = rowinv(v,r,c)

% QIP.OPEN_SYSTEMS.ROWINV   Transforms a vector into a matrix
% requires: nothing
% author: Marcus da Silva
%
%    M = rowinv(V,R,C) reshapes a vector V into a matrix with R
%    rows and C columns, taking V to be the row-major vectorization
%    of a matrix.
%
%    See also: vec, row, rowinv, reshape
%
%    License: Distributed under GPL 2.0
%             http://creativecommons.org/licenses/GPL/2.0/
%             http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

m = reshape(v,r,c);