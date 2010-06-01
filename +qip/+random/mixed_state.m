function rho = mixed_state(d)

% QIP.RANDOM.MIXED_STATE  Random density matrix
% author: Marcus da Silva
% requires: qip.random.unitary
%
%   M = qip.random.mixed_state(D) returns a D by D hermitian matrix
%   D with unity trace.
%
%   The matrix is generated as follows: the eigenvalues are
%   randomly chosen from a uniform distribution on [0,1], and the
%   diagonalization transformation is chosen from the Haar
%   distribution of unitaries. The trace is then normalized to be 1.
% 
%   See also: qip.random.unitary
%
%    License: Distributed under GPL 2.0
%             http://creativecommons.org/licenses/GPL/2.0/
%             http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

u = qip.random.unitary(d);
e = rand(1,d);
e = e/sum(e);
rho = u*diag(e)*u';
