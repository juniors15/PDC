function [ K ] = Freq2Bin(H)
%Translates 1,2,3,4,5,6,7,8 into binary.
%   Detailed explanation goes here

m=size(H)
h=zeros(3*m(2),1);
for i=1:m(2)
    h(i)
    if H(i)==1
        h(3*i-2)=0;
        h(3*i-1)=0;
        h(3*i)=0;
    elseif H(i)==2
        h(3*i-2)=0;
        h(3*i-1)=0;
        h(3*i)=1;
    elseif H(i)==3
        h(3*i-2)=0;
        h(3*i-1)=1;
        h(3*i)=0;
    elseif H(i)==4
        h(3*i-2)=0;
        h(3*i-1)=1;
        h(3*i)=1;
    elseif H(i)==5
        h(3*i-2)=1;
        h(3*i-1)=0;
        h(3*i)=0;
    elseif H(i)==6
        h(3*i-2)=1;
        h(3*i-1)=0;
        h(3*i)=1;
    elseif H(i)==7
        h(3*i-2)=1;
        h(3*i-1)=1;
        h(3*i)=0;
    elseif H(i)==8
        h(3*i-2)=1;
        h(3*i-1)=1;
        h(3*i)=1;
    end
end
K=h;

end

