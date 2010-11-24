function r = asym_hermitian_matrix( m )

% QIP.ASYM_HERMITIAN_MATRIX  Tensor product
% author: Marcus da Silva
% requires: nothing
%
%   A = qip.asym_hermitian_matrix( M ) returns a real-valued
%   representation of a hermitian matrix where the diagonals remain
%   unchanged, the uppter triangular part of A is the real part of
%   the upper triangular part of M, and the lower triangular part
%   of A is the imaginary part of the upper triangular part of M.
%
%   Copyright (C) 2010   Marcus P da Silva http://github.com/marcusps
% 
%   License: Distributed under GPL 2.0
%            http://creativecommons.org/licenses/GPL/2.0/
%            http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

%  Copyright (C) 2010   Marcus P da Silva http://github.com/marcusps
% 
%  This program is free software; you can redistribute it and/or modify
%  it under the terms of the GNU General Public License as published by
%  the Free Software Foundation; either version 3 of the License, or
%  (at your option) any later version.
% 
%  This program is distributed in the hope that it will be useful,
%  but WITHOUT ANY WARRANTY; without even the implied warranty of
%  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%  GNU General Public License for more details.
% 
%  You should have received a copy of the GNU General Public License
%  along with this program; if not, see <http://www.gnu.org/licenses/>.


r = real(diag(diag(m))) ...
    + real( triu(m,1) ) ...
    - imag( tril(m,1) );
