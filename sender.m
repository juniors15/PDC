

f=9000;
Fs = 4800;
temp =cos(2*pi*f/Fs*(1:20000));
soundsc(temp,Fs);