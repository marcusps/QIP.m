function l = dissipator( a ) 

% QIP.OPEN_SYSTEMS.DISSIPATOR  Liouvillian representation of dissipator superoperator
% requires: qip.open_systems.liou
% author: Marcus da Silva
%
%    L = qip.open_systems.dissipator(A) returns a column-major
%    liouville representation of a set of dissipators (if A is
%    a cell containing various operators) or a single dissipator
%    operator (if A is a single operator).
%
%    See also: liou_row, vec, row
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

diss = @(b) qip.open_systems.liou(b,b')-.5*qip.open_systems.liou(b'*b,eye(size(b)))-.5*qip.open_systems.liou(eye(size(b)),b'*b);

if iscell(a),
  l = qip.open_systems.liou(zeros(size(a{1})),zeros(size(a{1})));
  for k = 1:length(a),
    l = l + diss(a{k});
  end
else
  l = diss(a);
end
