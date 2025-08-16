function np = next_prime(n)
% next_prime : function to compute the first prime number greater than the 
% input n, -positive integer- using Bertrand-Tchebychev theorem : for all given positive
% integers n, there exists p prime such that n < p < 2n.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


u = primes(2*n); 
u = u(u > n);
np = u(1);


end % next_prime