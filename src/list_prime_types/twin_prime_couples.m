function tpc = twin_prime_couples(n)
% twin_prime_couples : function to list the twin prime couples
% less or equal to n in a N x 2 matrix / bicolumn vector.
% If n is an integer in the middle of a prime couple,
% then this couple is not listed.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


% TODO : + option in a given [m,n] window.


p = primes(n); % primes up to n
q = p(diff(p) == 2); % first primes in the prime couples
tpc = cat(1,q,q+2)'; % second primes in the prime couples


end % twin_prime_couples