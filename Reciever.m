

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

Sampling = (yE-yS-tStartEnd)/((tBip+tPause)*Fs) ;




