function l = dissipator( a ) 

% QIP.OPEN_SYSTEMS.DISSIPATOR  Liouvillian representation of dissipator superoperator
% requires: nothing
% author: Marcus da Silva
%
%    L = qip.open_systems.dissipator(A) returns a column-major
%    liouville representation of a set of dissipators (if A is
%    a cell containing various operators) or a single dissipator
%    operator (if A is a single operator).
%
%    See also: liou_row, vec, row
%
%    License: Distributed under GPL 2.0
%             http://creativecommons.org/licenses/GPL/2.0/
%             http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%
diss = @(b) liou(b,b')-.5*liou(b'*b,eye(size(b)))-.5*liou(eye(size(b)),b'*b);

if iscell(a),
  l = liou(zeros(size(a{1})),zeros(size(a{1})));
  for k = 1:length(a),
    l = l + diss(a{k});
  end
else
  l = diss(a);
end