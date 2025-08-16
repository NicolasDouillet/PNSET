function ep = Euler_primes(n)
% Euler_primes : function to list the Euler primes less or equal
% to the input n (positive integer).
% p is an Euler prime <=> p is prime and p = n^2 + n + 41, n positive integer.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


p = primes(n);
ep = intersect(p,polyval(horzcat(1,1,41),0:n));


end % Euler_primes