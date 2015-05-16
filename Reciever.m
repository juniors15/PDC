

function [out] = Reciever()
Properties()
Recorder = audiorecorder(Fs,16,1);
disp('Recording...');
record(Recorder);

pause;

stop(Recorder);

in = getaudiodata(Recorder);
disp('Computing...');
plot(in);

%on peut filtrer maintenant

soundStart(1:tStartEnd)=sin(2*pi*freqStart*((1:tStartEnd)/Fs));
soundEnd(1:tStartEnd)=sin(2*pi*freqEnd*((1:tStartEnd)/Fs));
sizeIn = size(in)


convStart = conv(in(1:round(sizeIn(1)/4)),soundStart);
convEnd = conv(in(round(sizeIn(1)*3/4):sizeIn(1)), soundEnd);

[xS,yS] = max(convStart);
[xE,yE] = max(convEnd);
yS
yE
Sampling = ((yE+round(sizeIn(1)*3/4)-yS)-tStartEnd)/(tBip+tPause);

Sampling=round(Sampling);
disp('Sampling...');
u=Sampling*(tBip+tPause);

k=zeros(u,1);
k(1:u,1)=in((yS+1):(u+yS),1);




P=zeros(Sampling,((tBip+tPause)));
Sampling
for i=1:Sampling
    P(i,1:(tBip+tPause))=k((1+(i-1)*(tBip+tPause)):(i*(tBip+tPause)),1);
end
m=size(P);
m
jans=zeros(m(1),1);
for i=1:m(1)
    jans(i)=Decode(P(i,:),Fs);
end
clear myRecorder
outp=jans';
outp
out = Freq2Bin(outp);
end






