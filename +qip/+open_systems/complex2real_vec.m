function v = complex2real_vec(in)

% QIP.OPEN_SYSTEMS.COMPLEX2REAL_VEC  Maps a complex-valued column vector to its real-valued representation.
% requires: nothing
% author: Marcus da Silva
%
%    M = COMPLEX2REAL_VEC( C ) Maps a complex valued matrix into a real-valued representation 
%    by mapping the real part of C to the even indices of M, and the imaginary parts to the 
%    off indices of M.
%
%    See also: vec, row, rowinv, reshape
%
%
%    License: Distributed under GPL 2.0
%             http://creativecommons.org/licenses/GPL/2.0/
%             http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

v = kron(real(in),[1 0]')+kron(imag(in),[0 1]');