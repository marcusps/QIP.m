function L = hamiltonian( h )

% QIP.OPEN_SYSTEMS.HAMILTONIAN  Liouvillian representation of hamiltonian superoperator
% requires: qip.open_systems.liou
% author: Marcus da Silva
%
%    L = qip.open_systems.hamiltonian(A) returns a column-major
%    liouville representation of a hamiltonian operator A.
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

L = -1j * qip.open_systems.liou(h,eye(size(h))) + 1j * qip.open_systems.liou(eye(size(h)),h);
