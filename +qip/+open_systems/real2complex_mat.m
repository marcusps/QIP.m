function m = real2complex_mat( in )

% QIP.OPEN_SYSTEMS.REAL2COMPLEX_MAT  Maps a complex valued matrix to its real-valued representation.
% requires: nothing
% author: Marcus da Silva
%
%    M = qip.open_systems.real2complex_mat( C ) maps a real-valued
%    representation of a complex matrix back into a complex-valued representation 
%    by mapping the diagonals blocks of C to the real part of M,
%    and the off-diagonal blocks of C to the imaginary part of M.
%
%    See also: vec, row, rowinv, reshape
%
%    License: Distributed under GPL 2.0
%             http://creativecommons.org/licenses/GPL/2.0/
%             http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

m = kron(real(in),eye(2)) + kron(imag(in),[0 -1; 1 0]);