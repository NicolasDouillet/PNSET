function cp = circular_primes(n)
% circular_primes : function to list the Fermat primes less or equal
% to the input n, positive integer. Two digits circular primes are :
% 11, 13, 17, 31, 37, 71, 73, 79, and 97
% (all two digits palindrome primes are also two digits cicular primes
% and vice versa). Three digits circular primes are :
% 113, 131, 197, 199, 311, 337, 373, 719, 733, 919, 971, and 991.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


p = primes(n);
is_cp = false(size(p));

for k = 1:numel(p)
    
    is_cp(1,k) = is_circular_prime(p(1,k));
    
end

cp = p(is_cp);


end % circular_primes