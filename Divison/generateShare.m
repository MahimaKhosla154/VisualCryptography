function [share1,share2,share3]= generateShare(Image)
disp('Generating Shares...')
s=size(Image);
share1=zeros(s(1),s(2));
share2=zeros(s(1),s(2));
share3=zeros(s(1),s(2));
ctr=0;
for i=1:s(1)
    for j=1:s(2)
        random_num = unidrnd(255);
        quo = (255*Image(i,j))/random_num;
        %rem= mod(Image(i,j),2);
        share1(i,j)= floor(quo);   %-quotient
        share2(i,j)= ((quo-floor(quo))*random_num); %remainder
        share3(i,j)= random_num; %random number-divisor
        ctr=ctr+1;
    end
end
ctr
end
