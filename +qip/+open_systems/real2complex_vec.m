function m = real2complex_vec( in ) % -*- mode: octave -*-

% QIP.OPEN_SYSTEMS.REAL2COMPLEX_VEC  Maps a real-valued representation of a complex vector to its complex-valued representation.
% requires: nothing
% author: Marcus da Silva
%
%    M = REAL2COMPLEX_VEC( C ) Maps a real-valued representation of a complex-valued 
%    matrix into a real-valued representation by mapping the even indices of C to the
%    real part of M, and the odd indices of C to the complex part of M.
%
%    See also: vec, row, rowinv, reshape
%
%
%    License: Distributed under GPL 2.0
%             http://creativecommons.org/licenses/GPL/2.0/
%             http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%
  
m = in(1:2:length(in)) + 1j * in(2:2:length(in));