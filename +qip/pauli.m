function p = pauli( idx )
% PAULI
% author: Marcus P. da Silva
% requires: nothing
%
%   PAULI(I) returns the Pauli matrix corresponding to the
%   index I. 0 maps to identity, 1 to \sigma_x, 2 to \sigma_y and 3
%   to \sigma_z.
%
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

if idx == 0
  p = [1 0; 0 1];
elseif idx == 1
  p = [0 1; 1 0];
elseif idx == 2
  p = [0 -i; i 0];
elseif idx == 3
  p = [1 0; 0 -1];
else
  p = []
end