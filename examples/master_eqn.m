import qip.open_systems.* 

% the Pauli operators which described
% the hamiltonian and dephasing
x = [0 1; 1 0];
z = [1 0; 0 -1];

% the Zeeman splitting
omega = 5;
% the dephasing rate
kappa = .03;

% the hamiltonian
H = omega/2 * x;
% the dephasing axis
A = sqrt(kappa) * z;
% the liouvillian which described the system
% dynamics, i.e. d/dt \rho = L \rho
L = hamiltonian(H) + dissipator(A);

% the initial state
vec_rho = vec([1 0; 0 0]);

% the loop which computes the plus state
% population as a function of time
time   = 1:1000;
sample = zeros(1,1000);
for t=time,
  sample(t) = vec_rho'*expm(t*L/50)*vec_rho;
end

plot(time/50,sample);
