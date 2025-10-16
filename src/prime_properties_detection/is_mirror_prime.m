function is_mrp = is_mirror_prime(p)
% is_mirror_prime : function to test if a prime number is
% a mirror prime. Mirror primes less to 100 are :
% 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.
%
% Mirror primes include palindrome primes.
%
% Also works for row/colum vectors.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


if numel(p) < 2 % scalar input
    
    is_mrp = isprime(p) & isprime(str2double(flip(num2str(p))));
    
else % vector input
    
    s = size(p);
    p = reshape(p,[numel(p),1]);
    is_mrp = reshape((isprime(p) & isprime(str2num(fliplr(num2str(p))))),[s(1),s(2)]);
    
end


end % is_mirror_prime