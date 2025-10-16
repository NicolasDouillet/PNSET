function mrp = mirror_primes(n)
% mirror_primes : function to list the mirror primes less or equal
% to the input n, positive integer. Palindrome primes less to 100 are :
% 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.
%
% Mirror primes include palindrome primes.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


p = primes(n);
mrp = p(is_mirror_prime(p));


end % mirror_primes