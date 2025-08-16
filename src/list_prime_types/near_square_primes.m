function nsp = near_square_primes(m)
% near_square_primes : function to list the near square primes less or equal
% to the input m, positive integer. p is a near square prime => p is prime
% and p = n^2 + 1 and actually p = 4n^2 + 1, except for 2, the first of them.
% All near square primes except 2 are then also Pythagoras primes. The six
% first near square primes are : 2, 5, 17, 37, 101, and 197.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


p = primes(m);
nsp = p(is_near_square_prime(p));


end % near_square_primes