function ep = Euclid_primes(n)
% Euclid_primes : function to list the Euclid primes less or equal
% to the input n (positive integer). p is an Euclid prime <=>
% p is prime and p = 1 + prod_i p_i, where p_i is th ith prime number.
% The six first Euclid primes are : 2, 3, 7, 31, 211, and 2311.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


if n < 5 % 2 and 3 specific cases
   
    ep = primes(n);
    
else
    
    p_i = primes(n); % To be improved if possible to check less numbers
    P = cumprod(p_i) + 1;
    Q = P(P < n+1);
    ep = union([2,3],Q(isprime(Q)));    
    
end


end % Euclid_primes