function f = taote_ben1(x)
% Objective function f()

wk_m = 100;   % simulation photons in million unit

% linear model for each device
% 1080ti :   52 * x + 53    = y (ms)
% 980 ti: 81.75 * x + 63.25 = y (ms)

f(1) = 52 * x(1) * wk_m + 53;
f(2) = 81.75 * x(2) * wk_m  + 63.25;

end