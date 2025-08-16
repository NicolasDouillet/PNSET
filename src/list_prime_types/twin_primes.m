function tp = twin_primes(n)
% twin_prime_couples : function to list the twin primes
% less or equal to n.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


% TODO : + option in a given [m,n] window.


p = primes(n); % primes up to n
q = p(diff(p) == 2); % younger twins
tp = union(q,q+2);


end % twin_prime_couples