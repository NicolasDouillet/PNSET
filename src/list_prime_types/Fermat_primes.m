function fp = Fermat_primes(n)
% Fermat_primes : function to list the Fermat primes less or equal
% to the input n, positive integer. p is a Fermat prime => p is prime
% and (p = 2^2^n + 1 where n is an integer. The five first Fermat primes
% are : 3, 5, 17, 257, and 65537.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


p = primes(n);
fp = intersect(p,pow2(pow2(0:n))+1);
    
    
end % Fermat_primes