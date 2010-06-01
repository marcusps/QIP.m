function m = vecinv(v,r,c)

% VECINV   Transformas a vector into a matrix
% requires: nothing
% author: Marcus da Silva
%
%    M = VECINV(V,R,C) Reshaped a vector V into a matrix with R
%    rows and C columns.
%
%    See also: vec, row, rowinv, reshape
%
%    License: Distributed under GPL 2.0
%             http://creativecommons.org/licenses/GPL/2.0/
%             http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

  m = reshape(v,r,c);