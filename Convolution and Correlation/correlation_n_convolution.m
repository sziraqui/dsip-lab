% Correlation and convolution of two signals
% x is x(t)
% h is h(t)
% cr is correlation of x and h
n = input('Sample size: '); % 5
x = input('Signal 1: '); % [1 3 2 1 2];
x0 = input('Zero of signal 1: '); % 3
h = input('Signal 2: '); % [-1 2 -3 0 3];
h0 = input('Zero of signal 2: '); % 3

subplot(2,2,1)
% if zero is at 3 and n=5, x cordinates will be from -2 to 2
stem(-(x0-1):n-x0, x);
xlabel('samples');
ylabel('amplitude');
title('Signal 1');

subplot(2,2,2)
stem(-(h0-1):n-h0, h);
xlabel('samples');
ylabel('amplitude');
title('Signal 2');

cr = zeros(1,2*n-1);
y = x.*fliplr(h)';

% get array of sum of elements along a diagonal
% elements whose i+j is equal (diagonal) will add to 'i+j-1'th element of cr
for i=1:n
  for j=1:n
    cr(i+j-1) = cr(i+j-1) + y(i,j);
  end
end

% find zero of corelation
% zero is at the index which has sum of elements with i+j == x0+y0
cr0 = x0 + h0 - 1;

% Output
disp('= Correlation is: ')
disp(cr); 
disp('= Zero at: ')
disp(cr0);

subplot(2,2,3)
stem(-(cr0-1):2*n-1-cr0, cr);
xlabel('samples');
ylabel('amplitute');
title('Corelation of 1 and 2');

% cn is convolution of x and h
cn = zeros(1,2*n-1);
y = x.*h';

for i=1:n
  for j=1:n
    cn(i+j-1) = cn(i+j-1) + y(i,j);
  end
end

cn0 = x0 + h0 - 1;

% Output
disp('= Convolution is: ')
disp(cn); 
disp('= Zero at: ')
disp(cn0);

subplot(2,2,4)
stem(-(cn0-1):2*n-1-cn0, cn);
xlabel('samples');
ylabel('amplitute');
title('Convolution of 1 and 2');

