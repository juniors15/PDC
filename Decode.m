function [ F ] = Decode(h,Fs)
Properties()

    w1 = sin(2*pi*freq1*(1:tBip)/Fs);
    w2 = sin(2*pi*freq2*(1:tBip)/Fs);
    w3 = sin(2*pi*freq3*(1:tBip)/Fs);
    w4 = sin(2*pi*freq4*(1:tBip)/Fs);
    w5 = sin(2*pi*freq5*(1:tBip)/Fs);
    w6 = sin(2*pi*freq6*(1:tBip)/Fs);
    w7 = sin(2*pi*freq7*(1:tBip)/Fs);
    w8 = sin(2*pi*freq8*(1:tBip)/Fs);
    c1 = abs(dot(h((1:tBip)), w1));
    c2 = abs(dot(h((1:tBip)), w2));
    c3 = abs(dot(h((1:tBip)), w3));
    c4 = abs(dot(h((1:tBip)), w4));
    c5 = abs(dot(h((1:tBip)), w5));
    c6 = abs(dot(h((1:tBip)), w6));
    c7 = abs(dot(h((1:tBip)), w7));
    c8 = abs(dot(h((1:tBip)), w8));
    if(max([c1,c2,c3,c4,c5,c6,c7,c8])==c1)
        f=1;
    elseif(max([c1,c2,c3,c4,c5,c6,c7,c8])==c2)
        f=2;
   elseif(max([c1,c2,c3,c4,c5,c6,c7,c8])==c3)
        f=3;
    elseif(max([c1,c2,c3,c4,c5,c6,c7,c8])==c4)
        f=4;
        elseif(max([c1,c2,c3,c4,c5,c6,c7,c8])==c5)
        f=5;
        elseif(max([c1,c2,c3,c4,c5,c6,c7,c8])==c6)
        f=6;
        elseif(max([c1,c2,c3,c4,c5,c6,c7,c8])==c7)
        f=7;
       elseif(max([c1,c2,c3,c4,c5,c6,c7,c8])==c8)
        f=8;
    end
    
   F=f;
   f
   disp('Decode');
end