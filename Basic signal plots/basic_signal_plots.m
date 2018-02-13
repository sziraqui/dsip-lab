% Plot graph of standard functions
% 1. Unit step
% X axis
x = -10:10;
% input lower step
low = 0;
high = input('Enter upper step: ');
% Y axis
y = low.*(x <0) + high.*(x>=0);
% screen divided into 3x2 quads, this plot is on 1st quad
subplot(2,3,1);
stem(x,y);
xlabel('no. of samples');
ylabel('u(n)');
title('Unit step');

% 2. Unit ramp
% input range
n = input('Enter x range: ');
% X axis
x = -n:n;
% Y axis
y = x.*(x >= 0) + 0.*(x < 0);
subplot(2,3,2);
stem(x,y)
xlabel('no. of samples');
ylabel('r(n)');
title('Unit ramp');

% 3. Impulse
% input range
k = input('Enter k value: ');
% X axis
x = -10:10;
% Y axis
y = k.*(x==k);
subplot(2,3,4);
stem(x,y)
xlabel('no. of samples');
ylabel('delta(n)');
title('Impulse signal');

% 4. Exponential signal
% input range
a = input('Enter base (a): ');
% X axis
steps = 0.2;
x = 0:steps:10;
% Y axis
y = a.^x;
subplot(2,3,3);
stem(x,y)
xlabel('no. of samples');
ylabel('e(n)');
title('Exponential signal');

% 5. Sine signal
% input range
n = input('Enter input range: ');
% X axis
steps = 0.2;
x = -n:steps:n;
% Y axis
y = sin(x);
subplot(2,3,5);
stem(x,y)
xlabel('no. of samples');
ylabel('sin(n)');
title('Sine signal');

% 6. Cosine signal
% input range
n = input('Enter input range: ');
% X axis
steps = 0.2;
x = -n:steps:n;
% Y axis
y = cos(x);
subplot(2,3,6);
stem(x,y)
xlabel('no. of samples');
ylabel('cos(n)');
title('Cosine signal');
