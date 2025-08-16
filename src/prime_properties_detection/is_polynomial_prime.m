function is_polyp = is_polynomial_prime(p, poly_coeff)
% is_polynomial_prime : function to test if a number p, integer scalar,
% is a polynomial prime. Polynomial coefficients are sorted in
% descending order of power and stored in poly_coeff.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


r = roots(cat(2,poly_coeff(1:end-1),poly_coeff(end)-p));
is_polyp = isprime(p) & any(r >= 0 & floor(r) == r); 


end % is_polynomial_prime