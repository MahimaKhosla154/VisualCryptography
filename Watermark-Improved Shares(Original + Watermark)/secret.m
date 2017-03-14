%decrypting share 1
function original = secret(share1,share2)
disp('Decrypting original image..')
s=size(share1);
original =zeros(s(1),s(2));
for i=1:s(1)
    for j=1:s(2)
        %share1(i,j)= floor(((inImg_1(i,j)*2+ inImg_2(i,j)+1)*(mod4))/2 );
        %share1(i,j)=floor(mod(inImg_1(i,j)*2+ inImg_2(i,j)+1,4)/.2);
        %share1(i,j)=floor(mod(inImg_1(i,j)*2+ inImg_2(i,j)+1,12)/.2);
        original(i,j)= floor(mod(share1(i,j)*2+share2(i,j)+3,4)/2);
    end
end 
%share1=~share1;
%[share11,share12,share13]=VisCrypt(share1);
end