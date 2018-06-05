%期权定价

%布朗运动 (欧式期权) brownian motion /ation asset price at discrete time points
A = randn(1,100)  %正态分布
B = randn(1,100)  
plot(A*100,B,'or')

N = 100
M = 252
mu = 0.1
sigma = 0.3
T = 1
dt = T/M
BM = zeros(N,M+1);

S0 = 100;
BM(:,1) = S0;
for ii = 1:M
    Winc = sqrt(dt)*randn(N,1);
    BM(:,ii+1) = BM(:,ii)+ BM(:,ii)*mu*dt +BM(:,ii)*sigma.*Winc;
end

plot(1:M+1,BM)


%可查询delta对冲策略