function up = Ulam1_primes(n)
% Ulam1_primes : function to list the Ulam primes of the first kind
% less or equal to the input n, positive integer. p is an Ulam prime
% of the first kind <=> p is prime and p = 4n^2 + 4n + 59.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


p = primes(n);
up = intersect(p,polyval([4,4,59],0:n)); % Ulam first formula


end % Ulam1_primes