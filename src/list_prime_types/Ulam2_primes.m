function up = Ulam2_primes(n)
% Ulam2_primes : function to list the Ulam primes of the second kind
% less or equal to the input n, positive integer. p is an Ulam prime
% of the second kind <=> p is prime and p = 4n^2 + 170n + 1847.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


p = primes(n);
up = intersect(p,polyval([4,170,1847],0:n)); % Ulam second formula


end % Ulam2_primes

