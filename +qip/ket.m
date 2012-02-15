function v = ket( m, d )
% KET
% author: Marcus P. da Silva
% requires: nothing
%
%   KET(V) returns the basis vector corresponding to the binary
%   string v.
%
%   KET(N,D) returns the Nth basis vector corresponding in a
%   Hilbert space of dimension D.
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
v = [];
if ischar(m),
  v = flipud([zeros([1,2^length(m)-bin2dec(m)-1]),1,zeros([1, ...
                      bin2dec(m)])]');
elseif isnumeric(m) & isnumeric(d) & m<d & m>=0,
  rshift = @(v,n)  v([(length(v)-n+1):length(v),1:(length(v)-n)]);
  ket_zero = @(d) [1;zeros(d-1,1)];
  v = rshift(ket_zero(d),m);
end
