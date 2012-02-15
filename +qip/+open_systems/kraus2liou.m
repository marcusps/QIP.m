function l = kraus2liou( a ) 
% QIP.OPEN_SYSTEMS.KRAUS2LIOU  Liouvillian representation of Kraus operators
% requires: qip.open_systems.liou
% author: Marcus da Silva
%
%    L = qip.open_systems.kraus2liou(A) returns a column-major
%    liouville representation of a set of Kraus operators (if A is
%    a cell containing various operators) or a single Kraus
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
if iscell(a),
  l = qip.open_systems.liou(zeros(size(a{1})),zeros(size(a{1})));
  for k = 1:length(a),
    l = l + qip.open_systems.liou(a{k},a{k}');
  end
else
  l = qip.open_systems.liou(a,a');
end
