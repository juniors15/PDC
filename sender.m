
Properties()

temp =cos(2*pi*freqStart/Fs*(1:10000));

%pause;


temp2 =cos(2*pi*freq8/Fs*(1:30000));

tempstot = [temp,zeros(1,2000),temp2];
soundsc(tempstot,Fs,16);