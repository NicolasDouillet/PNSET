function is_near_square_prime = is_near_square_prime(p)
% is_near_square_prime : function to test if a number p
% is a near square prime : p is prime, there exist a
% positive integer n such that p = n^2 + 1.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


is_near_square_prime = isprime(p) & (sqrt(p-1) == floor(sqrt(p-1)));


end % is_near_square_prime