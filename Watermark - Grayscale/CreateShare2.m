function [share2]=CreateShare2(inImg_1,inImg_2)
disp('Creating share 2..')
s=size(inImg_1);
share2=zeros(s(1),s(2));
for i=1:s(1)
    for j=1:s(2)
        share2(i,j)= mod(inImg_1(i,j)*2+ inImg_2(i,j)+1,255);
    end
end 
end