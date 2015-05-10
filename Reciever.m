

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

soundStart(1:tStartEnd)=sin(2*pi*freqStart/Fs*(tStartEnd:-1:1));
soundEnd(1:tStartEnd)=sin(2*pi*freqEnd/Fs*(tStartEnd:-1:1));

convStart = conv(in, soundStart);
convEnd = conv(in, soundEnd);

[xS,yS] = max(convStart);
[xE,yE] = max(convEnd);

Sampling = (yE-yS-tStartEnd)/((tBip+tPause)*Fs);

Sampling=round(Sampling);

u=Sampling*(tBip+tPause)*Fs;

k=zeros(u,1);
k(1:u,1)=h((yS+1):(u+yS),1);

T*Fs

P=zeros(n,((tBip+tPause)*Fs));
for i=1:n
    P(i,1:(tBip+tPause)*Fs)=k((1+(i-1)*(tBip+tPause)*Fs):(i*(tBip+tPause)*Fs),1);
end
m=size(P);
jans=zeros(m(1),1);
for i=1:m(1)
    jans(i)=decode(P(i,:),Fs);
clear myRecorder
G=jans';
end;






