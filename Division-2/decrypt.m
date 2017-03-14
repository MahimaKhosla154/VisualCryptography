function output=decrypt(share1,share2,share3)
disp('Decrypting Image...')
s=size(share1);
output=zeros(s(1),s(2));
%{
i=1;
j=1;
if (sqrt(share1(i,j))-floor(sqrt(share1(i,j)))==0)
    share1(i,j)=sqrt(share1(i,j));
elseif (mod(share1(i,j),2.68)==0)    
    share1(i,j)=share1(i,j)/2.68;
else share1(i,j)=exp(share1(i,j));    
end  
  %}
for i=1:s(1)
    for j=1:s(2)
        output(i,j)=((share3(i,j)*share1(i,j)+share2(i,j))/255);
    end
end    
end