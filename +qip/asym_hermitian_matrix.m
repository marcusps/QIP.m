function r = asym_hermitian_matrix( m )
% QIP.ASYM_HERMITIAN_MATRIX 
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
%   License: Distributed under Apache License, Version 2.0
%            http://www.apache.org/licenses/LICENSE-2.0
%

%    Copyright 2012 Marcus P. da Silva
% 
%    Licensed under the Apache License, Version 2.0 (the "License");
%    you may not use this file except in compliance with the License.
%    You may obtain a copy of the License at
% 
%        http://www.apache.org/licenses/LICENSE-2.0
% 
%    Unless required by applicable law or agreed to in writing, software
%    distributed under the License is distributed on an "AS IS" BASIS,
%    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%    See the License for the specific language governing permissions and
%    limitations under the License.

r = real(diag(diag(m))) ...
    + real( triu(m,1) ) ...
    - imag( tril(m,1) );
