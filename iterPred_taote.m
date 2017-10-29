% simulation volume in million unit
phnVolume = 100;

% cores on each device
cuda_cores = [3584, 2816];



% linear model for each device

%% ben1

fprintf('\n------------\nbenchmark 1\n------------\n\n');

% 1080ti :   52 * x + 53    = y (ms)
% 980 ti: 81.75 * x + 63.25 = y (ms)
coef_a = [52, 81.75];
coef_b = [53, 63.25];

workload_partion = iterative_pred(cuda_cores, coef_a, coef_b, phnVolume)

%% ben2

fprintf('\n------------\nbenchmark 2\n------------\n\n');

% 1080ti :   98  * x + 73     = y (ms)
% 980 ti: 146.25 * x + 145.75 = y (ms)
coef_a = [98, 146.25];
coef_b = [73, 145.75];

workload_partion = iterative_pred(cuda_cores, coef_a, coef_b, phnVolume)

%% ben2a

fprintf('\n------------\nbenchmark 2a\n------------\n\n');

% 1080ti :   100  * x + 73    = y (ms)
% 980 ti:  148.5  * x + 157.5 = y (ms)
coef_a = [100, 148.5];
coef_b = [73, 157.5];

workload_partion = iterative_pred(cuda_cores, coef_a, coef_b, phnVolume)