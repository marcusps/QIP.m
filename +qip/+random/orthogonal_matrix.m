function u = orthogonal_matrix(n)

% QIP.RANDOM.ORTHOGONAL_MATRIX   Random orthogonal matrix
% requires: nothing
% author: Marcus da Silva
%
%    U = RAND_ORTHO(D) returns a random orthogonal matrix of
%    dimension D.
%
%    See also: rand_unitary, randn, orth

u = orth(randn(n));