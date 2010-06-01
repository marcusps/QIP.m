function u = unitary(n)

% QIP.RANDOM.UNITARY   Random unitary
% requires: nothing
% author: Marcus da Silva
%
%    U = QIP.RANDOM.UNITARY(N) returns a random unitary matrix of
%    dimension N drawn according to the Haar measure.
%
%    See also: randn, orth
%
%    License: Distributed under GPL 2.0
%             http://creativecommons.org/licenses/GPL/2.0/
%             http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

u = orth(randn(n)+sqrt(-1)*randn(n));
