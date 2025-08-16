function [] = primespiral2(n)
% primespiral2 : function to compute and 3D plot the primes spiral
% where each prime p_n XY position is computed relatively to its
% predecessor in a right angle triangle (Pythagoras theorem) such that
% p_n^2 = p_{n-1}^2 + d, with d a positive integer.
% Z value corresponds to the radius : Z = sqrt(X^2 + Y^2).
%
% Because of pi(x) and Bertrand-Tchebychev theorem,
% lim_p_n -> Inf p_{n+1}/p_n = 1 and then
% lim_p_n -> Inf atan(p_{n+1}/p_n) = pi/4, hence the result
% (8 branches spiral; 2pi = 8 * pi/4) 
%
%%% Author : nicolas.douillet9 (at) gmail.com, 2014-2025.


start = 2; % first prime to start with; default value = 2
v = setdiff(primes(n),primes(start-1));

M = [v ; v(2:end) v(end); zeros(1,length(v))];
P = [start;0;0];
M = [P M];

beta = atan2(M(2,2:end),M(1,2:end));
theta = [0 cumsum(beta)];

% Z axis rotation matrix
R = @(alpha)[cos(alpha) -sin(alpha) 0;
             sin(alpha)  cos(alpha) 0;
             0           0          1];

figure(1);
set(gcf,'Color',[0 0 0]);

k = 2;

while k < 1 + size(M,2)
    
    P(:,k) = P(:,k-1) + R(theta(1,k-1))*M(:,k);
    scatter3(P(1,k-1),P(2,k-1),M(1,k),108,M(1,k),'.'), hold on;
    k = k+1;

end

colormap(1-jet);
set(gca,'Color',[0 0 0]);
axis square, axis equal, axis off;
view(2);


end % primespiral2