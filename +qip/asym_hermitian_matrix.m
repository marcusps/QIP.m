function r = asym_hermitian_matrix( m )

% QIP.ASYM_HERMITIAN_MATRIX  Tensor product
% author: Marcus da Silva
% requires: none
%
%   A = qip.asym_density_matrix( M ) returns a real-valued
%   representation of a hermitian matrix where the diagonals remain
%   unchanged, the uppter triangular part of A is the real part of
%   the upper triangular part of M, and the lower triangular part
%   of A is the imaginary part of the upper triangular part of M.
%

%   License: Distributed under GPL 2.0
%            http://creativecommons.org/licenses/GPL/2.0/
%            http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

r = real(diag(diag(m))) ...
    + real( triu(m,1) ) ...
    - imag( tril(m,1) );
