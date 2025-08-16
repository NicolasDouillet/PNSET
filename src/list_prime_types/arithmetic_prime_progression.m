function P = arithmetic_prime_progression(n)
% arithmetic_prime_progression : function to list the arithmetic
% progressions of primes, and check for all of them except the first one
% (3, 5, 7) triplet they verify the preoperty : p' - p = 6k where k is a
% positive integer, p and p' consecutive members of such progressions.
%
% First progressions are : 
%
% [3 5 7]
% [47 53 59]
% [151 157 163]
% [167 173 179]
% [199 211 223]
% [251 257 263 269]
%
% Output P is a cell array of doubles.
%
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2025.


p = primes(n);
dd = diff(diff(p));
ldd = ~~dd;

b_id = 1 + find(diff(ldd) == -1); % begin indices
e_id = 2 + find(diff(ldd) ==  1); % end indices

m = min(numel(b_id),numel(e_id)); % in case n is in the middle of such a sequence
b_id = b_id(1:m);
e_id = e_id(1:m);

r_id = cat(2,b_id',e_id');
P = {[]};

for k = 1:size(r_id,1)
    
    P(k,1) = {p(1,r_id(k,1):r_id(k,2))};
    
end


end % arithmetic_prime_progression