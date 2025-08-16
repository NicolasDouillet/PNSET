function plp = palindrome_primes(n)
% palindrome_primes : function to list the palindrome primes less or equal
% to the input n, positive integer. Palindrome primes less to 100 are :
% 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


p = primes(n);
plp = p(is_palindrome_prime(p));


end % palindrome_primes