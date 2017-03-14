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
        rem= mod(Image(i,j),random_num);
        share1(i,j)= floor(quo);   %-quotient
        %{
        if(quo<16)
            share1(i,j)= floor(quo)*2;
        elseif (quo>=16 || quo<100)
            share1(i,j)=floor(quo)*2.68;
        else share1(i,j)= floor(log(quo*2));  
        end  
  %}
        share2(i,j)= rem; %remainder
        share3(i,j)= random_num; %random number-divisor
        ctr=ctr+1;
    end
end
ctr
end
