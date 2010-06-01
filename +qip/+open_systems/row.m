function r = row(m)

% ROW   Row-major vectorization
% requires: nothing
% author: Marcus da Silva
%
%    R = ROW(M) stacks the rows of M into a column vector. 
%
%    See also: vec, vech, liou, rowinv
%
%    License: Distributed under GPL 2.0
%             http://creativecommons.org/licenses/GPL/2.0/
%             http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

r = vec(transpose(m));