function is_plp = is_palindrome_prime(p)
% is_palindrome_prime : function to test if a prime number is
% a palindrome prime. Palindrome primes less than 200 are :
% 2, 3, 5, 7, 11, 101, 131, 151, 181, and 191.
%
% Also works for row/colum vectors.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


if numel(p) < 2 % scalar input
    
    is_plp = isprime(p) & strcmp(flip(num2str(p)),num2str(p));
    
else % vector input
    
    is_plp = false(size(p));
    
    for k = 1:numel(p)
        
        is_plp(k) = isprime(p(k)) & strcmp(flip(num2str(p(k))),num2str(p(k)));
    
    end
    
end


end % is_palindrome_prime