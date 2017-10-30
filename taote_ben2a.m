function f = taote_ben2a(x)
% Objective function f()

wk_m = 100;   % simulation photons in million unit

% linear model for each device
% 1080ti :   100  * x + 73    = y (ms)
% 980 ti:  148.5  * x + 157.5 = y (ms)

f(1) = 100 * x(1) * wk_m + 73;
f(2) = 148.5 * x(2) * wk_m  + 157.5;

end