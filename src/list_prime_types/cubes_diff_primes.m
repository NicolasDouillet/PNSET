function ccdp = cubes_diff_primes(n)
% cubes_diff_primes : function to list the primes less or equal to n,
% positive integer scalar, and which are the difference between two
% consecutive integers : p = (n+1)^3 - n^3 = 3n^2 + 3n + 1.
% The five first ones are : 7, 19, 37, 61, 127, and 271.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


p = primes(n);
ccdp = intersect(p,polyval([3 3 1],0:n));


end % cubes_diff_primes