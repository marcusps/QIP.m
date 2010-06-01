function rho = real_mixed_state(d)

% QIP.RANDOM.REAL_MIXED_STATE  Random real-valued mixed state
% author: Marcus da Silva
% requires: none
%
%   M = qip.random.real_mixed_state(D) returns a D by D real-valued
%   density matrix.
%
%   See also: qip.random.mixed_state
%
%   License: Distributed under GPL 2.0
%            http://creativecommons.org/licenses/GPL/2.0/
%            http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

u = rand_ortho(d);
e = rand(1,d);
e = e/sum(e);
rho = u*diag(e)*u';