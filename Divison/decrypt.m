function output=decrypt(share1,share2,share3)
disp('Decrypting Image...')
s=size(share1);
output=zeros(s(1),s(2));
for i=1:s(1)
    for j=1:s(2)
        output(i,j)=((share3(i,j)*share1(i,j)+share2(i,j))/255);
    end
end    
end