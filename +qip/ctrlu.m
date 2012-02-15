function c = ctrlu( u, n )
% CTRLU
% author: Marcus P. da Silva
% requires: nothing
%
%   CTRLU(u) returns a unitary corresponding to the controlled-u operation.
%
%   CTRLU(u,n) returns a unitary corresponding to the n-bit
%   controlled-u operation (that is, u acting conditioned on the
%   state of n qubits)
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
if nargin < 2 || isempty(n)
  n = 1;
end
c = sparse(blkdiag(eye(2^n),u));
