rng('default')
fs = 48000;
n = 320;
t = 0:1/fs:(n-1)/fs;                      
x = 0.5 * sin(2*pi*15000*t) + sin(2*pi*1000*t);

figure(1)
plot(t, x)
xlabel('time(s)')
ylabel('x(t)')

y = fft(x);

y0 = fftshift(y);         
f0 = (-n/2:n/2-1)*(fs/n); 
power0 = abs(y0);    

figure(2)
plot(f0,power0)
xlabel('f(Hz)')
ylabel('Abs(X)')

h = fir1(28, 6/24);
figure(3)
stem(h)

figure(4)
freqz(h)

x_filtered = conv(x,h);
x_filtered = x_filtered(1:320);
figure(5)
plot(t, x_filtered)

y_filtered = fft(x_filtered);

y_filtered0 = fftshift(y_filtered);         
power_filtered0 = abs(y_filtered0);    

figure(6)
plot(f0,power_filtered0)
xlabel('f(Hz)')
ylabel('Abs(X_filtered)')


