function is_euclid_prime = is_Euclid_prime(p)
% is_Euclid_prime : function to test if a number p, positive integer
% scalar, is an Euclid prime : p = 1 + prod_i p_i where p_i is
% the ith prime number. The six first Euclid primes are :
% 2, 3, 7, 31, 211, 2311
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


f = factor(p-1);
u = primes(f(end));
is_euclid_prime = isequal(f,u) | p == 2;


end % is_Euclid_prime