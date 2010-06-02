function V = vec( M )

  V = reshape(M,prod(size(M)),1);
