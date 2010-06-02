function L = hamiltonian( h )

L = -1j * liou(h,eye(size(h))) + 1j * liou(eye(size(h)),h);
