function f = taote_ben2(x)
% Objective function f()

wk_m = 100;   % simulation photons in million unit

% linear model for each device
% 1080ti :   98  * x + 73     = y (ms)
% 980 ti: 146.25 * x + 145.75 = y (ms)

f(1) = 98 * x(1) * wk_m + 73;
f(2) = 146.25 * x(2) * wk_m  + 145.75;

end