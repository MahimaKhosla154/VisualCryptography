function [share1]=CreateShare1(inImg_1,inImg_2)
disp('Creating share 1..')
s=size(inImg_1);
share1=zeros(s(1),s(2));
for i=1:s(1)
    for j=1:s(2)
        share1(i,j)=floor(mod(inImg_1(i,j)*2+ inImg_2(i,j)+1,255)/2);
    end
end 
end