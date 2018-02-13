% Operations on discrete signals
m = 1; % amplitude
k = 0; % shift ('-' -> delay | '+' -> advance)
%n = 10; % no. of samples
%s = 1:n;

% user defined samples
n = input('No. of samples = ');

s = input('Samples: ');

% Original signal
subplot(3,3,1);
stem(1:n,s);
xlabel('no. of samples');
ylabel('amplitude');
title('Original');

% Delayed signal
k = input('Delay = ');
y = s;
for i = 1:k
  y(i) = 0;
end
for i = k+1:n+k
  y(i) = s(i-k);
end
subplot(3,3,4);
stem(1:n+k,y);
xlabel('no. of samples');
ylabel('amplitude');
title('Delayed signal');

% Advanced signal
k = input('Advance = ');
y = s;
for i = n+1:n+k
  y(i) = 0;
end
subplot(3,3,5);
stem(1-k:n,y);
xlabel('no. of samples');
ylabel('amplitude');
title('Advanced signal');

% Inverse signal
y = -s;
subplot(3,3,6);
stem(-n:-1,y);
xlabel('no. of samples');
ylabel('amplitude');
title('Inverse');

% Scaled signal
m = input('Scale = ');
y = s.*m;
subplot(3,3,7);
stem(1:n,y);
xlabel('no. of samples');
ylabel('amplitude');
title('Scaled signal');

% Even signal
for i = 1:n
  y(i+n+1) = s(i)/2;
end
for i = 1:n
  y(i) = s(n-i+1)/2;
end
subplot(3,3,8);
stem(-n:n,y);
xlabel('no. of samples');
ylabel('amplitude');
title('Even signal');

% Odd signal
for i = 1:n
  y(i+n+1) = s(i)/2;
end
for i = 1:n
  y(i) = -s(n-i+1)/2;
end

subplot(3,3,9);
stem(-n:n,y);
xlabel('no. of samples');
ylabel('amplitude');
title('Odd signal');
