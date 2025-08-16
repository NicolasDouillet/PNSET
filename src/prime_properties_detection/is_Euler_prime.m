function is_euler_prime = is_Euler_prime(p)
% is_Euler_prime : function to test if a number p
% is an Euler prime : p = n^2 + n + 41. The six first
% Euler primes are : 41, 43, 47, 53, 61, and 71.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


r = roots([1 1 41-p]);
is_euler_prime = isprime(p) & any(r >= 0 & floor(r) == r); 


end % is_Euler_prime