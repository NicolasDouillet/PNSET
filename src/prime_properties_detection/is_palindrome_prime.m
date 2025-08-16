function is_plp = is_palindrome_prime(p)
% is_palindrome_prime : function to test if a prime number is
% a palindrome prime. Palindrome primes less to 100 are :
% 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.
%
% Also works for row/colum vectors.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


if numel(p) < 2 % scalar input
    
    is_plp = isprime(p) & isprime(str2double(flip(num2str(p))));
    
else % vector input
    
    s = size(p);
    p = reshape(p,[numel(p),1]);
    is_plp = reshape((isprime(p) & isprime(str2num(fliplr(num2str(p))))),[s(1),s(2)]);
    
end


end % is_palindrome_prime