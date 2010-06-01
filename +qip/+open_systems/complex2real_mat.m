function m = complex2real_mat( in ) % -*- mode: octave -*-

% QIP.OPEN_SYSTEMS.COMPLEX2REAL_MAT  Maps a complex valued matrix to its real-valued representation.
% requires: nothing
% author: Marcus da Silva
%
%    M = qip.open_systems.complex2real_mat( C ) Maps a complex valued matrix into a real-valued representation 
%    by mapping the real part of C to diagonals blocks of M, and the imaginary parts to the 
%    antisymmetric off-diagonal blocks of M.
%
%    See also: vec, row, rowinv, reshape
%
%
%    License: Distributed under GPL 2.0
%             http://creativecommons.org/licenses/GPL/2.0/
%             http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

m = kron(real(in),eye(2)) + kron(imag(in),[0 -1; 1 0]);