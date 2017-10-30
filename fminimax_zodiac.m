%% ben 1

fprintf('\n------------\nbenchmark 1(fminimax)\n------------\n\n');

% init
x0 = [0.1; 0.1; 0.1];

A = [];
b = [];

Aeq=[1,1,1];
beq = 1;
lb = [0;0;0];
ub = [1;1;1];
[x,fval] = fminimax(@zodiac_ben1,x0, A, b, Aeq, beq, lb, ub);

x



%% ben 2

fprintf('\n------------\nbenchmark 2(fminimax)\n------------\n\n');

% init
x0 = [0.1; 0.1; 0.1];

A = [];
b = [];

Aeq=[1,1,1];
beq = 1;
lb = [0;0;0];
ub = [1;1;1];
[x,fval] = fminimax(@zodiac_ben2,x0, A, b, Aeq, beq, lb, ub);

x



%% ben 2a

fprintf('\n------------\nbenchmark 2a(fminimax)\n------------\n\n');

% init
x0 = [0.1; 0.1; 0.1];

A = [];
b = [];

Aeq=[1,1,1];
beq = 1;
lb = [0;0;0];
ub = [1;1;1];
[x,fval] = fminimax(@zodiac_ben2a,x0, A, b, Aeq, beq, lb, ub);

x
