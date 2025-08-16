function is_tp = is_twin_prime(p)
% is_twin_prime : function to test if a number p is a is twin prime :
% p is prime and either p-2 is also prime or p+2 is also prime. Both is
% possible for the one and unique p = 5.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


is_tp = isprime(p) & (isprime(p-2) | isprime(p+2));


end % is_twin_prime