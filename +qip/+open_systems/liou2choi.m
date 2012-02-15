function M = liou2choi( c )
% QIP.OPEN_SYSTEMS.LIOU2CHOI
% requires: nothing
% author: Marcus da Silva
%
%    C = qip.open_systems.choi2liou(L) takes a Liouville matrix C in
%    the computational basis and returns the corresponding Choi matrix
%    C.
%
%    See also: choi2liou, liou, vec, row, choi_liou_involution
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
s = size(c);
M = 1/sqrt(s(1))*qip.open_systems.choi_liou_involution(c);