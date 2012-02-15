function phis = cptp_map(varargin)
% QIP.RANDOM.CPTP_MAP  Random completely positive trace preserving map
% requires: qip.ket, qip.bra, qip.random.unitary, kron
% author: Marcus da Silva
%
%    L = qip.random.superoperator(d,e) returns the column-major
%    liouville representation of a random superoperator acting on a d
%    dimensional Hilbert space, with an E dimensional environment. 
%    The superoperator is chosen by generating Haar distributed
%    unitary acting on the joint system, and performing a partial trace.
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
d = varargin{1};
if length(varargin)>1,
  e = varargin{2};
  if e>d^2,
    e = d^2;
  end
else
  e = d^2;
end
u=qip.random.unitary(d*e);
ey=eye(d);
r=u*kron(ey,qip.ket(0,e));
phis=zeros(d*d);
for k=0:(e-1),
  phis=phis+qip.open_systems.kraus2liou( kron(ey,qip.bra(k,e))*r );
end
