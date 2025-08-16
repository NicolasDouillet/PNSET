function [is_pythagoras_prime, a, b] = is_Pythagoras_prime(p)
% is_Pythagoras_prime : function to test if a number p
% is a Pythagoras prime : p is prime, there exist an
% integer n such that p = 4n+1, and there also exist two positive
% integers a and b sucha that : p = a^2 + b^2.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


is_pythagoras_prime = (mod(p-1,4) == 0) & isprime(p);

if is_pythagoras_prime
    
    k = 1;
    
    while k < floor(0.5*p)
        
        c = [k,p-k];
        
        if sum(floor(sqrt(c)) == sqrt(c),2) == 2
            
            a = sqrt(k);
            b = sqrt(p-k);
            break;
            
        end
        
        k = k + 1;
        
    end
    
else
    
    a = [];
    b = [];
    
end


end % is_Pythagoras_prime