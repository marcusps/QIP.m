function sample = dirichlet( alpha )
% QIP.RANDOM.MIXED_STATE  Sample a vector from Dir(alpha(1), ..., alpha(k))
% author: Marcus da Silva
% requires: nothing
%
%   M = qip.random.dirichlet(D) returns a vector sampled from the
%   probability simplex according to the Diriclet distribution with
%   parameters alpha.
% 
%   See also: qip.random.mixed_state
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

k = length(alpha);
sample = zeros(1, k);
for i=1:k
  sample(i) = gamrnd(alpha(i), 1, 1, 1);
end
S = sum(sample);
sample = sample ./ S;