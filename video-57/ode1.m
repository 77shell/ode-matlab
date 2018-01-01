
function yout = ode1(F,t0,h,tfinal,y0)

% Reference:
%     https://www.youtube.com/watch?v=aW-e04zwTnc&list=PLUl4u3cNGP63oTpyxCMLKt_JmB0WtSZfG&index=57&t=602s
%
% ODE1 A simple ODE solver
%   yout = ode1(t0,h,tfinal,y0) uses Euler's
%   method with fixed step size h on the interval
%      t0 <= t <= tfinal
%   to solve
%      dy/dt = F(t,y)
%   with y(t0) = y0.

y = y0;
yout = y;
for t = t0 : h : tfinal-h
   s = F(t,y);
   y = y + h*s;
   yout = [yout; y];
end
