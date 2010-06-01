function du = duplication_conj(n)

% QIP.OPEN_SYSTEMS.DUPLICATION_CONJ   Generated a duplication and conjugation matrix.
% requires: nothing
% author: Marcus da Silva
%
%    M = DUPLICATION_CONJ(D) Generates a duplication matrix acting on the result of 
%    an elimination of a vectorization of a D by D matrix. When M multiplies such a vector, 
%    the result is a larger vector consisting of all parts of the
%    hermitian matrix, in vectorized form.
%
%    See also: vec, row, rowinv, reshape
%
%    License: Distributed under GPL 2.0
%             http://creativecommons.org/licenses/GPL/2.0/
%             http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

du = eye(2*n*n);
% row major storage
offset = @(r,c,d) (r-1)*d+c;

for c=1:n,
  for r=1:(c-1),
    o = offset(c,r,n);
    du(2*o,2*o) = -1;
  end
end

du = du*complex2real_mat(duplication(n));