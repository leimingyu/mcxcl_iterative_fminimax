function workload_ratio = iterative_pred(cuda_cores, coef_a, coef_b, wk_m)

maxIter = 1000;

stop_threshold = 1;

% initialize with cores
devs = length(cuda_cores);

% ratio by cores
prop = cuda_cores ./ sum(cuda_cores);
%disp(prop);

% assign workload using prop
wk = wk_m * prop;
% disp(wk);

y = zeros(1, devs);   % time in ms
y_new = zeros(1, devs);

y = coef_a .* wk + coef_b;

% find the  bottleneck runtime, compute overall throughput
perf = (wk_m * 1e6) / max(y);  % photons / ms

% iterative udpating

best_ratio = [];

for i=1:maxIter
    %fprintf('\n------------\niteration %d\n', i);
    %fprintf('current throughput : %.3f\n', perf);
    
    % use current throughput to adjust work partitioning
    % throughput: photons/ms 
    throughput = (wk * 1e6) ./ y;
    %disp(throughput);
    
    % adjust percentage according to the througput
    new_prop = throughput ./ sum(throughput);
    %disp('update partition'); 
    %disp(new_prop);
    
    new_wk = wk_m * new_prop; % new photon volume for each device
    new_y = coef_a .* new_wk + coef_b;
    
    % find the slowest device using max()
    new_perf = (wk_m * 1e6) / max(new_y);
    %fprintf('new throughput : %.3f\n', new_perf);
    
    
%     if new_perf < perf
%         disp('best partition found.');
%         display(prop);
%         best_ratio = prop;
%         break;
%     else
%         
%         if  (new_perf - perf) >= stop_threshold
%             % continue after updating
%             disp('update!');
%             y = new_y;
%             perf = new_perf;
%             prop = new_prop;
%         else
%             disp('best partition found.');
%             display(new_prop);
%             best_ratio = new_prop;
%             break;
%         end
%     end

    if  abs(new_perf - perf) >= stop_threshold
        % continue after updating
        %disp('update!');
        y = new_y;
        perf = new_perf;
        prop = new_prop;
    else
        fprintf('best partition found at iteration %d\n', i);
        display(new_prop);
        best_ratio = new_prop;
        break;
    end
    
    if i == maxIter                                                             
        warning('Warning! Program did not converge. MaxIter is reached.\n');    
        best_ratio = new_prop;                                                  
    end

end

workload_ratio = best_ratio;

end
