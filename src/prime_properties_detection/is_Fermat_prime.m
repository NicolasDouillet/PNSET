function is_fermat_prime = is_Fermat_prime(p)
% is_Fermat_prime : function to test if a number p is a Fermat prime :
% p is prime and there exist an integer n such that p = 2^2^n + 1.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


if p < 3
    
    is_fermat_prime = false;
    
else % p-1 is a power of 4
        
    is_fermat_prime = isprime(p) & floor(log(p-1)/log(4)) == log(p-1)/log(4);
    
end


end % is_Fermat_prime