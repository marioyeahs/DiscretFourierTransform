clc
clear all
close all
n=0:127;

% 1)
W_4=dftmtx(4)
W4=sym(W_4)
W_8=dftmtx(8)
W8=sym(W_8)
%2)
x1=cos(40*pi*n/128);
X1=fft(x1);
x2=cos(39*pi*n/128);
X2=fft(x2);
k=0:127;
figure
stem(k,abs(X1))
title('Espectro de señal x_1(t)')
xlabel('n')
ylabel('Hz')
figure
stem(k,abs(X2))
title('Espectro de señal x_2(t)')
xlabel('n')
ylabel('Hz')
%3)
X1=fftshift(fft(x1,512))
X2=fftshift(fft(x2,512))
dw=2*pi/512;
w=-pi:dw:pi-dw;
figure
plot(w,abs(X1))
title('Espectro de señal x_1(t)')
xlabel('n')
ylabel('Hz')
xlim([-pi pi])
figure
plot(w,abs(X2))
title('Espectro de señal x_2(t)')
xlabel('n')
ylabel('Hz')
xlim([-pi pi])
%4)
L=64
wvtool(rectwin(L))
wvtool(bartlett(L))
wvtool(hann(L))
wvtool(hamming(L))
wvtool(blackman(L))
