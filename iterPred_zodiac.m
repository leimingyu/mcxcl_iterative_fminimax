% simulation volume in million unit
phnVolume = 100;

% cores on each device
cuda_cores = [2304, 4096, 48];


% linear model for each device	

%% ben1

fprintf('\n------------\nbenchmark 1\n------------\n\n');

% zodiac: 0100	RX 480 (AMD)       55.75 * x + 652.25 = y (ms)
% zodiac: 0010	R9 Nano (AMD)      44.75 * x + 631.25 = y 
% zodiac: 0001	Genuine Intel(R) CPU @ 2.00GHz   800.5 * x + 772.5 = y  

coef_a = [55.75,44.75,800.5];

coef_b = [652.25, 631.25, 772.5];

workload_partion = iterative_pred(cuda_cores, coef_a, coef_b, phnVolume)


%% ben2

fprintf('\n------------\nbenchmark 2\n------------\n\n');

% zodiac: 0100	RX 480 (AMD)       122 * x + 841 = y (ms)
% zodiac: 0010	R9 Nano (AMD)      110.25 * x + 791.75 = y 
% zodiac: 0001	Genuine Intel(R) CPU @ 2.00GHz   1570 * x + 900 = y  

coef_a = [122,110.25,1570];

coef_b = [841,791.75,900];

workload_partion = iterative_pred(cuda_cores, coef_a, coef_b, phnVolume)

%% ben2a

fprintf('\n------------\nbenchmark 2a\n------------\n\n');

% zodiac: 0100	RX 480 (AMD)       158.5 * x + 838.5 = y (ms)
% zodiac: 0010	R9 Nano (AMD)      133 * x + 813 = y 
% zodiac: 0001	Genuine Intel(R) CPU @ 2.00GHz   1616.75 * x + 968.25 = y  

coef_a = [158.5,133,1616.75]; 

coef_b = [838.5,813,968.25];

workload_partion = iterative_pred(cuda_cores, coef_a, coef_b, phnVolume)



