function l = kraus( a ) 

% QIP.OPEN_SYSTEMS.KRAUS  Liouvillian representation of Kraus operators
% requires: nothing
% author: Marcus da Silva
%
%    L = qip.open_systems.kraus(A) returns a column-major
%    liouville representation of a set of Kraus operators (if A is
%    a cell containing various operators) or a single Kraus
%    operator (if A is a single operator).
%
%    See also: liou_row, vec, row
%
%    License: Distributed under GPL 2.0
%             http://creativecommons.org/licenses/GPL/2.0/
%             http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

if iscell(a),
  l = liou(zeros(size(a{1})),zeros(size(a{1})));
  for k = 1:length(a),
    l = l + liou(a{k},a{k}');
  end
else
  l = liou(a,a');
end