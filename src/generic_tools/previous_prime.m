function pp = previous_prime(n)
% previous_prime : function to compute the first prime number
% strictly smaller than the input n, positive integer.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


p = primes(n);

if isprime(n)
    
    pp = p(end-1);
    
else
    
    pp = p(end);
    
end


end % previous_prime