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
%   License: Distributed under GPL 2.0
%            http://creativecommons.org/licenses/GPL/2.0/
%            http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

%  Copyright (C) 2010   Marcus P da Silva http://github.com/marcusps
% 
%  This program is free software; you can redistribute it and/or modify
%  it under the terms of the GNU General Public License as published by
%  the Free Software Foundation; either version 3 of the License, or
%  (at your option) any later version.
% 
%  This program is distributed in the hope that it will be useful,
%  but WITHOUT ANY WARRANTY; without even the implied warranty of
%  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%  GNU General Public License for more details.
% 
%  You should have received a copy of the GNU General Public License
%  along with this program; if not, see <http://www.gnu.org/licenses/>.

k = length(alpha);
sample = zeros(1, k);
for i=1:k
  sample(i) = gamrnd(alpha(i), 1, 1, 1);
end
S = sum(sample);
sample = sample ./ S;