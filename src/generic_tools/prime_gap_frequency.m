function ff = prime_gap_frequency(delta, N)
%% prime_gap_frequency : fonction to compute and display the cumulated
% frequencies of one given prime gap over a range of prime numbers.
%
%%% Author : nicolas.douillet9 (at) gmail.com, 20216-2025.
%
%
% Input arguments
%
%
% - delta : real scalar double, positive even integer, the prime gap.
%
% - N : real scalar double integer, the integer upper limit to sample the
%       vector of primes. N > 3.
%
%
% Output argument
%
% - ff : real scalar double, the frequency of delta on the range |[2; N]|.
%
%
% Example
%
% ff = prime_gap_frequency(6,101);


%% Input parsing
if nargin ~= 2
   
    error('prime_gap_frequency takes exactly two arguments as inputs.');
    
end

assert(isreal(N) && N == floor(N) && N > 3,'Upper limit N must be an integer greater than 3.');
assert(isreal(delta) && delta == floor(delta) && delta > 0 && mod(delta,2) == 0,'Prime gap must be a positive even integer.');


%% Body
v = primes(N);
w = diff(v); % delta
q = zeros(1,length(w));


for k = 1:length(w)
    
    f = find(w(1,1:k) == delta);
    s = length(f);
    q(1,k) = s/k; % vector of proportion
    
end

r = v(2:end);
ff = q(1,numel(q)); % final frequency


%% Display
figure;
set(gcf,'Color',[1 1 1]);
plot(r,q,'Color',[0 0 1],'Linewidth',1.5), hold on;
line([r(1) r(1,numel(r))],[ff ff],'Color',[1 0 0],'Linewidth',2), hold on;

if numel(v) < 25
    xticks(v);
else
    xticks(v(1:floor(numel(v)/25):end));
end

axis tight;
grid on, box on;
set(gca,'Color',[1 1 1],'FontSize',16);

xlabel('Prime values');
ylabel(['Proportion of \Delta = ',num2str(delta)]);
title({['Cumulated frequency of gap \Delta = ',num2str(delta)],' between consecutive prime numbers'});
legend('Cumulated frequency','Final frequency','Location','SouthEast');


e = find(q == max(q));
m = r(e);

msg = sprintf('Maximum proportion of delta = %d is : %d, reached on %d at index %d',delta,max(q),m,e);
disp(msg);


end % prime_gap_frequency