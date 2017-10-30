function f = zodiac_ben2a(x)
% Objective function f()

wk_m = 100;   % simulation photons in million unit

% linear model for each device	
% zodiac: 0100	RX 480 (AMD)       158.5 * x + 838.5 = y (ms)
% zodiac: 0010	R9 Nano (AMD)      133 * x + 813 = y 
% zodiac: 0001	Genuine Intel(R) CPU @ 2.00GHz   1616.75 * x + 968.25 = y  

f(1) = 158.5 * x(1) * wk_m + 838.5;
f(2) = 133 * x(2) * wk_m  + 813;
f(3) = 1616.75 * x(3) * wk_m  + 968.25;

end
