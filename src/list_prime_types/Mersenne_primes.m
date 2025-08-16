function mp = Mersenne_primes(m)
% Mersenne_primes : function to list the Mersenne primes less or equal
% to the input m, positive integer. p is a Mersenne prime => p is prime
% and p = 2^n - 1 where n is also a prime number. The five first Mersenne
% primes are : 3, 7, 31, 127, and 8191.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


p = primes(m);
mp = p(is_Mersenne_prime(p));


end % Mersenne_primes