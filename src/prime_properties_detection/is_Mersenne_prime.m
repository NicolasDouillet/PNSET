function is_mersenne_prime = is_Mersenne_prime(p)
% is_Mersenne_prime : function to test if a number p is a Mersenne prime :
% p is prime and there exist an integer n such that p = 2^n - 1.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.
        

is_mersenne_prime = isprime(p) & floor(log2(p+1)) == log2(p+1);
    

end % is_Mersenne_prime