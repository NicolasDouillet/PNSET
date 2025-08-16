function polyp = polynomial_primes(n, poly_coeff)
% polynomial_primes : function to list polynomial primes less to n,
% positive integer. Polynomial coefficients are sorted in descending
% order of power and stored in poly_coeff.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


p = primes(n);
polyp = intersect(p,polyval(poly_coeff,0:n));


end % polynomial_primes