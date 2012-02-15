function M = choi2liou( c )
% QIP.OPEN_SYSTEMS.CHOI2LIOU
% requires: nothing
% author: Marcus da Silva
%
%    L = qip.open_systems.choi2liou(C) takes a Choi matrix C (with
%    trace normalized to 1) and returns the Liouville map L (with
%    proper normalization so that it has at least one eigenvalue
%    1).
%
%    See also: liou2choi, liou, vec, row, choi_liou_involution
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
M = s(1)*qip.open_systems.choi_liou_involution(c);