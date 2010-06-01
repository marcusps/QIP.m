function el = elimination(n)

% QIP.OPEN_SYSTEMS.ELIMINATION   Generates an elimination matrix.
% requires: nothing
% author: Marcus da Silva
%
%    M = ELIMINATION(D) Generates an elimination matrix acting of the 
%    vectorization of a D by D matrix. When M multiplies such a vector, 
%    the result is a smaller vector consisting of only the upper-triangular
%    part of the matrix, in vectorized form.
%
%    See also: vec, row, rowinv, reshape
%
%    License: Distributed under GPL 2.0
%             http://creativecommons.org/licenses/GPL/2.0/
%             http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

vechindex = @(r,c,n) n * r + c - r*(r+1)/2;

el = zeros(n*(n+1)/2,n*n);
cols = size(el);
cols = cols(2);
for j=1:cols,
  rowo = floor((j-1)/n);
  colo = mod(j-1,n);
  if (rowo <= colo)
    el(vechindex(rowo,colo,n)+1,j) = 1;
  end
end
