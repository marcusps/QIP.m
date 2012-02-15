function m = ketbra( s1, s2, d )
% NORMALIZE
% author: Marcus P. da Silva
% requires: qip.ket, qip.bra
%
%   KETBRA(v) the rank 1 operator which maps the basis element with
%   binary representation s2 to the vector basis element with
%   binary representation s1.
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
m=[];
if ischar(s1) & ischar(s2),
  m = qip.ket(s1)*qip.bra(s2);
elseif isnumeric(s1) & isnumeric(s2) & s1>=0 & s2>=0 & s1<d & s2<d,
  m = qip.ket(s1,d)*qip.bra(s2,d);
end