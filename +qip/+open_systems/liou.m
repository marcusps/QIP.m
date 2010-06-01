function l = liou(left,right) 

% QIP.OPEN_SYSTEMS.LIOU   Column-major liouvillian representation of left and right linear operations
% requires: nothing
% author: Marcus da Silva
%
%    L = LIOU(A,B) returns the column-major liouvilian representation of a
%    linear transformation that acts on a matrix on the right with
%    A and on the left with B. In other words, VEC(A*M*B) = LIOU(A,B)*VEC(M)
%
%    See also: liou_row, vec, row
%
%    License: Distributed under GPL 2.0
%             http://creativecommons.org/licenses/GPL/2.0/
%             http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

l = kron(transpose(right),left);