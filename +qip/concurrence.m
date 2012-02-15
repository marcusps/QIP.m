function c = concurrence( R )
% CONCURRENCE
% author: Marcus P. da Silva
% requires: nothing
%
%   CONCURRENCE(R) computes the concurrence of a two qubit density
%   matrix R. 
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
import qip.*
y = qip.pauli(2);
% convert to magic basis
% apply complex conjugate
% revert to computational basis
B = 1/sqrt(2) * [ 1  1i  0   0;
                  0   0 1i  1i;
                  0   0 1i -1i;
                 -1 -1i  0   0];
Rm = B'* conj( B * R * B' ) * B;
Rt = kron(y,y)*Rm*kron(y,y);
sR = sqrtm(R);
Rm = sqrtm(sR*Rt*sR);
c = max(0, 2 * max(real(eig(Rm))) - real(trace(Rm)));
