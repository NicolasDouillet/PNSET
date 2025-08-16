function pp = Pythagoras_primes(m)
% Pythagoras_primes : function to list the Pythagoras primes less or equal
% to the input m, positive integer. p is a Pythagoras prime => p is prime
% and p = 4n + 1 and p = a^2 + b^2, where a, b, and n are positive integers.
% 
% The five first Pythagoras primes are : 5, 13, 17, 29, 37, and 41.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


p = primes(m);
pp = p(is_Pythagoras_prime(p));


end % Pythagoras_primes