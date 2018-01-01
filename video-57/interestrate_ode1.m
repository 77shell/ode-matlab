%
% Compound interest rate calculation
%

a=.05
F=@(t,y)a*y
t0 = 0
h = 1/12 % one month, �p�������j
tfinal=10 % 10 years
y0=1500 % �@�}�l�s�J����
format bank
compound = ode1(F,t0,h,tfinal,y0)
t=(0:h:tfinal)'

%
% Simple interest rate calculation
%
simple = y0 + y0 * a *t

plot(t,[compound simple],'.')
