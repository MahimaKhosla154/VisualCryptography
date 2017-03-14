% clc;
clear all;
close all;

%Read input image
inImg_1 = imread('C:\Users\DellUser\Documents\MATLAB\51.jpg');
figure;
subplot(3,2,1)
imshow(inImg_1);
title('Secret Image');

%Read WaterMark Image
inImg_2 = imread('C:\Users\DellUser\Documents\MATLAB\61.jpg');
subplot(3,2,2)
imshow(inImg_2);
title('Watermark Image');

%creating first share
share1=CreateShare1(inImg_1,inImg_2);

%creating second share
share2=CreateShare2(inImg_1,inImg_2);

%decrypting
original=secret(share1,share2);
watermark=water(share1,share2);

%Outputs
subplot(3,2,3)
imshow(share1);
title('Share 1');

subplot(3,2,4);
imshow(share2);
title('Share 2');

subplot(3,2,5);
imshow(original);
title('original');

subplot(3,2,6);
imshow(watermark);
title('watermark');

imwrite(share1,'Share1.bmp');
imwrite(share2,'Share2.bmp');
imwrite(share12,'Overlapped.bmp');