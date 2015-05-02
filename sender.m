

f=7000;
Fs = 4800;
temp =cos(2*pi*f/Fs*(1:10000));

%pause;

f2=8000;
temp2 =cos(2*pi*f2/Fs*(1:30000));

tempstot = [temp,zeros(1,2000),temp2];
soundsc(tempstot,Fs,16);