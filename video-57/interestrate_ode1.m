%
% Compound interest rate calculation
%

a=.05
F=@(t,y)a*y
t0 = 0
h = 1/12 % one month, 計息的間隔
tfinal=10 % 10 years
y0=1500 % 一開始存入的錢
format bank
compound = ode1(F,t0,h,tfinal,y0)
t=(0:h:tfinal)'

%
% Simple interest rate calculation
%
simple = y0 + y0 * a *t

plot(t,[compound simple],'.')
