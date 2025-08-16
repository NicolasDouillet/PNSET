function is_ulam2_prime = is_Ulam2_prime(p)
% is_Ulam2_prime : function to test if a number p
% is an Ulam prime of the second kind : p = 4n^2 + 170n + 1847.
% The six first Ulam primes of the second kind are :
% 1847, 2203, 2393, 2591, 2797, and 3011.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


r = roots([4 170 1847-p]);
is_ulam2_prime = isprime(p) & ~isempty(find(r >= 0 & floor(r) == r, 1)); 


end % is_Ulam2_prime