F1=@(t,y).06*y
F2=@(t,y)t^2+y^2
a=2,b=3
F3=@(t,y)a*y-b*y^2

% 1.5 Example
% y'= 2y
% y(0) = 10
% 0 <= t <= 3
F4 = @(t,y)2*y
t0 = 0
h = 1
tfinal = 3
y0 = 10
ode1(F4,t0,h,tfinal,y0)

