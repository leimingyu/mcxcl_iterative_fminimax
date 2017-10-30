function f = zodiac_ben2(x)
% Objective function f()

wk_m = 100;   % simulation photons in million unit

% linear model for each device	
% zodiac: 0100	RX 480 (AMD)       122 * x + 841 = y (ms)
% zodiac: 0010	R9 Nano (AMD)      110.25 * x + 791.75 = y 
% zodiac: 0001	Genuine Intel(R) CPU @ 2.00GHz   1570 * x + 900 = y  


f(1) = 122 * x(1) * wk_m + 841;
f(2) = 110.25 * x(2) * wk_m  + 791.75;
f(3) = 1570 * x(3) * wk_m  + 900;

end
