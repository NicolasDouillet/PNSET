function is_cp = is_circular_prime(p)
% is_circular_prime : function to test is a prime is a circuler prime.
% Two digits circular primes are : 11, 13, 17, 31, 37, 71, 73, 79, and 97
% (all two digits palindrome primes are also two digits cicular primes
% and vice versa). Three digits circular primes are : 113, 131, 197, 199,
% 311, 337, 373, 719, 733, 919, 971, and 991.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


is_cp = isprime(p);
sp = num2str(p);

for k = 1:strlength(sp)-1
    
    is_cp = is_cp & isprime(str2double(circshift(sp,k)));
    
end


end % is_circular_prime