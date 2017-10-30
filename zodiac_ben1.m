function f = zodiac_ben1(x)
% Objective function f()

wk_m = 100;   % simulation photons in million unit


% linear model for each device	

% zodiac: 0100	RX 480 (AMD)       55.75 * x + 652.25 = y (ms)
% zodiac: 0010	R9 Nano (AMD)      44.75 * x + 631.25 = y 
% zodiac: 0001	Genuine Intel(R) CPU @ 2.00GHz   800.5 * x + 772.5 = y  



f(1) = 55.75 * x(1) * wk_m + 652.25;
f(2) = 44.75 * x(2) * wk_m  + 631.25;
f(3) = 800.5 * x(3) * wk_m  + 772.5;

end
