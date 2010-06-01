function M = tensor(varargin)

% TENSOR  Tensor product
% author: Toby Cubitt ( http://www.dr-qubit.org )
% requires: none
%
%   m = TENSOR(a,b,c,...) returns the kronecker product of its arguments.
%
%   Each argument should either be a matrix, or a cell array containing a
%   matrix and an integer. In the latter case, the integer specifies the
%   repeat count for the matrix, e.g. TENSOR(a,{b,3},c) =
%   TENSOR(a,b,b,b,c).
% 
%   See also: kron
%
%   License: Distributed under GPL 2.0
%            http://creativecommons.org/licenses/GPL/2.0/
%            http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

M = 1;
for j = 1:nargin
  if iscell(varargin{j})
    for k = 1:varargin{j}{2}
      M = kron(M,varargin{j}{1});
    end
  else
    M = kron(M,varargin{j});
  end
end
