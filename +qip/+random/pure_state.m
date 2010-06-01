function v = pure_state(n)

% QIP.RANDOM.PURE_STATE   Random pure state
% requires: nothing
% author: Marcus da Silva
%
%    V = qip.random.pure_state(N) returns a random normalized complex-valued
%    column vector with dimension N, distributed according to the 
%    Fubini-Study measure.
%
%    See also: randn, orth
%
%    License: Distributed under GPL 2.0
%             http://creativecommons.org/licenses/GPL/2.0/
%             http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

v = randn(n,1)+sqrt(-1)*randn(n,1);
v = v/sqrt(v'*v);

