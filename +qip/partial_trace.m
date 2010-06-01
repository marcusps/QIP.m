function x = partial_trace(p,sys,dim);

% PARTIAL_TRACE   Partial trace
% requires: nothing
% author: Toby Cubitt ( http://www.dr-qubit.org )
%
%    X = PARTIAL_TRAC(RHO,SYS,DIM) traces out system SYS of a matrix RHO
%    with subsystem dimensions specified by DIM.
%
%    If no dimensions are specified, i.e. DIM=[], PARTIAL_TRACE assumes a 2x2
%    system.
%
%    If only one is specified, i.e. DIM=[dim1], it assumes a
%    dim1 x dim1 system.
%
%    If two are specified, i.e. DIM=[dim1,dim2], a dim1 x dim2
%    system is assumed.
%
%    DIM=[dim1,dim2,dim3] specifies a dim1 x dim2 x dim3 system
%    (duh!)
%
%    License: Distributed under GPL 2.0
%             http://creativecommons.org/licenses/GPL/2.0/
%             http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
%

switch length(dim)
 case 0
  dim1 = 2;
  dim2 = 1;
  dim3 = 2;
  if (sys == 2) sys = 3; end
 case 1
  dim1 = dim(1);
  dim2 = 1;
  dim3 = dim1;
  if (sys == 2) sys = 3; end
 case 2
  dim1 = dim(1);
  dim2 = 1;
  dim3 = dim(2);
  if (sys == 2) sys = 3; end
 case 3
  dim1 = dim(1);
  dim2 = dim(2);
  dim3 = dim(3);
end


switch sys
 case 1
  x=zeros(dim2*dim3);
  indx=(1:dim2*dim3);
  for k=0:dim1-1
    x=x+p(indx+k*dim2*dim3,indx+k*dim2*dim3);
  end

 case 2
  x=zeros(dim1*dim3);
  indx=kron(ones(1,dim1),[1:dim3]) + ...
       kron(dim2*dim3*[0:dim1-1],ones(1,dim3));
  for k=0:dim2-1
    x=x+p(indx+k*dim3,indx+k*dim3);
  end
  
 case 3
  x=zeros(dim1*dim2);
  indx=dim3*(0:dim1*dim2-1);
  for k=1:dim3
    x=x+p(indx+k,indx+k);
  end
end
