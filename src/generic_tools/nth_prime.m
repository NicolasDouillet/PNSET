function np = nth_prime(n)
% nth_prime : function to find the nth prime.
% Input n is a positive integer.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


p = primes(1.5*n*log(n));
np = p(n);


end % nth_prime