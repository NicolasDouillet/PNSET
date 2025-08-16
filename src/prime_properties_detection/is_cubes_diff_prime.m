function is_ccdp = is_cubes_diff_prime(p)
% is_cubes_diff_prime : function to test if a number p
% is a prime, difference of the cubes of two consecutive integers n and n+1 :
% p = 3n^2 + 3n + 1. The five first ones are : 7, 19, 37, 61, 127, and 271.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


r = roots([3 3 1-p]);
is_ccdp = isprime(p) & any(r >= 0 & floor(r) == r); 


end % is_cubes_diff_prime