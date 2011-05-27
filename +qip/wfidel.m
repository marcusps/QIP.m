function f = wfidel(u, v)
% WFIDEL worst case pure state fidelity between two unitaries.
%
%    April 6, 2006. M. Silva : m silva at iqc dot ca
%                   Joint work with D. Kribs
%
%    For two unitaries U and V, WFIDEL(U,V) is the worst case
%    fidelity between U*A and V*A, where A is a complex vector
%    with norm 1. That is, WFIDEL(U,V) is equal to the minimum
%    of |A'*U'*V*A|^2 over all complex vectors A with unit norm.
%
%   Copyright (C) 2010  Marcus P. da Silva  http://github.com/marcusps
% 
%   License: Distributed under GPL 2.0
%            http://creativecommons.org/licenses/GPL/2.0/
%            http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

%  Copyright (C) 2010  Marcus P. da Silva  http://github.com/marcusps
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
%  along with this program; if not, see
%  <http://www.gnu.org/licenses/>.

  % some very basic error checking
  su = size(u);
  sv = size(v);
  if su ~= sv
    error('Bad Matrix Sizes','Input matrices do not have the same size');
  end;
  % for debuging, maybe make sure that U and V are unitary?
  
  % local variables
  e  = eig(u'*v); % eigenvalues of u'*v
  es = sortrows([e,angle(e)+pi],2); 
  d  = es(:,1);
  f  = 0;

  es(:,2) = es(:,2)-pi;
  n = length(d);
  
  % find the minimum distance from the convex hull
  % of the distinct eigenvalues to the origin. if
  % the origin is contained in the convex hull, 
  % that distance is defined as 0.
  if n==1
    f = 1;
  else 
    if n==2
      f = orig_to_line(d(1),d(2));
    else 
      dn = dist_to_neighbour(angle(d));
      dn(1) = 2*pi-sum(dn(2:n)); % the sum of the angular separations is 2*pi
                                 % and the boundary cases are funny
                                 % so it is best to calc it this way
      dn = find(dn > pi);
      if length(dn>0)==1
	f = orig_to_line(d(dn),d(mod(dn-2,n)+1));
      end;
    end;
  end;
  f = f^2;
end

function d = orig_to_line( c1, c2 )
  % straight out of http://mathworld.wolfram.com/Point-LineDistance2-Dimensional.html
  x1 = real(c1);
  y1 = imag(c1);
  x2 = real(c2)+1E-17*randn(); % added these perturbations to avoid
  y2 = imag(c2)+1E-17*randn(); % div by 0
  d = abs((x2-x1)*y1-x1*(y2-y1))/sqrt((x2-x1)^2+(y2-y1)^2);
end

function s = dist_to_neighbour( ar )
  d = length(ar);
  s = abs(ar - ar(mod([1:d]-2,d)+1));
end
