function v = bra( s, d )
% BRA
% author: Marcus P. da Silva
% requires: qip.ket
%
%   BRA(S) returns a basis row vector with binary representation S.
%
%   BRA(N, D) returns the Nth basis row vector in a D dimensional space.
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
if ischar(s),
  v = qip.ket( s )';
else
  v = qip.ket( s, d )';
end
