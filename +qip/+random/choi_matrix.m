function phi = choi_matrix( d )

% QIP.RANDOM.CHOI_MATRIX  Random Choi-Jamiolkowski matrix
% author: Marcus da Silva
% requires: qip.random.density_matrix
%
%   M = qip.random.choi_matrix(D) returns a Choi-Jamiolkowski
%   matrix M for a random completely positive superoperator acting
%   on a D dimensional Hilbert space.
%
%   This is done by generating a random density matrix acting on a
%   D^2 space, such that the eigenvalues are uniformly distributed
%   on the [0,1/D^2] interval, and the diagonalizing unitary is
%   choosen from the Haar distribution.
% 
%   See also: qip.random.density_matrix, qip.random.unitary
%
%    License: Distributed under GPL 2.0
%             http://creativecommons.org/licenses/GPL/2.0/
%             http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

phi = qip.random.mixed_state(d*d);
