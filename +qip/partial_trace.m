function R = partial_trace( M, sys, dim )
% QIP.PARTIAL_TRACE
% requires: nothing
% author: Marcus da Silva
%
%    qip.partial_trace(R, N, D) takes the partial trace over the 
%    Nth system, in a partitioning of the dimensions given by the
%    vector of positive integers D.
%
%    It currently only supports bipartite systems.
%
%    See also: trace
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
import qip.ketbra
import qip.tensor

ds = length(dim);

if ds~=2,
  error('ERROR: "partial_trace" only supports bi-partite systems currently');
end

if sys==1,
  other=2;
  R = zeros(dim(other));
  for ii=1:dim(other),
    for jj=1:dim(other),
      R(ii,jj) = trace( tensor(eye(dim(sys)),ketbra(ii-1,jj-1,dim(other))) * M );
    end
  end
else
  other=1;
  R = zeros(dim(other));
  for ii=1:dim(other),
    for jj=1:dim(other),
      R(ii,jj) = trace( tensor(ketbra(ii-1,jj-1,dim(other)),eye(dim(sys))) * M );
    end
  end
end


