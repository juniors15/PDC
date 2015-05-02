

function [out] = Reciever()
Properties()
Recorder = audiorecorder(Fs,16,1);
disp('Recording...');
record(Recorder);

pause;

stop(Recorder);

in = getaudiodata(Recorder);
plot(in);





