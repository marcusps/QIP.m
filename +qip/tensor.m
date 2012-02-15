function T = tensor(varargin)
% TENSOR  Tensor product
% author: Marcus P da SIlva
% requires: none
%
%   m = TENSOR(a,b,c,...) returns the tensor product of a, b, c etc
%
%   See also: kron
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

T = 1;
for ii=1:nargin,
  T = kron(T,varargin{ii});
end
