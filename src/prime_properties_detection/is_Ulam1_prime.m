function is_ulam1_prime = is_Ulam1_prime(p)
% is_Ulam1_prime : function to test if a number p
% is an Ulam prime of the first kind : p = 4n^2 + 4n + 59.
% The six first Ulam primes of the first kind are :
% 59, 67, 83, 107, 139, and 179.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


r = roots([4 4 59-p]);
is_ulam1_prime = isprime(p) & ~isempty(find(r >= 0 & floor(r) == r, 1)); 


end % is_Ulam1_prime