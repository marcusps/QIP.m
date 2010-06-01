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
%    License: Distributed under GPL 2.0
%             http://creativecommons.org/licenses/GPL/2.0/
%             http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

l = kron(left,transpose(right));