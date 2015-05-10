 w1 = sin(2*pi*freq1*t/Fs);
    w2 = sin(2*pi*freq2*t/Fs);
    w3 = sin(2*pi*freq3*t/Fs);
    w4 = sin(2*pi*freq4*t/Fs);
    c1 = abs(dot(h(t), w1));
    c2 = abs(dot(h(t), w2));
    c3 = abs(dot(h(t), w3));
    c4 = abs(dot(h(t), w4));
    if(max([c1,c2,c3,c4])==c1)
        f=1;
    elseif(max([c1,c2,c3,c4])==c2)
        f=2;
    elseif(max([c1,c2,c3,c4])==c3)
        f=3;
    elseif(max([c1,c2,c3,c4])==c4)
        f=4;
    end