function [share1]=CreateShare1(inImg_1,inImg_2)
disp('Creating share 1..')
s=size(inImg_1);
share1=zeros(s(1),s(2));
for i=1:s(1)
    for j=1:s(2)
        %share1(i,j)= floor(((inImg_1(i,j)*2+ inImg_2(i,j)+1)*(mod4))/2 );
        share1(i,j)=floor(mod(inImg_1(i,j)*2+ inImg_2(i,j)+1,4)/2);
        %share1(i,j)=floor(mod(inImg_1(i,j)*2+ inImg_2(i,j)+1,12)/.2);
    end
end 
%share1=~share1;
%[share11,share12,share13]=VisCrypt(share1);
end