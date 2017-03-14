%decrypting share 1
function original = secret(share1,share2)
disp('Decrypting original image..')
s=size(share1);
original =zeros(s(1),s(2));
for i=1:s(1)
    for j=1:s(2)
        original(i,j)= floor(mod(share1(i,j)*2+share2(i,j)+3,4)/2);
    end
end 
end