clc;
clear all;
close all;

%Read input image
inImg_1 = imread('C:\Users\DellUser\Documents\MATLAB\1.bmp');
inImg_1 = im2bw(inImg_1, 0.1);
figure;
subplot(6,2,1)
imshow(inImg_1);
title('Secret Image');

%Read WaterMark Image
inImg_2 = imread('C:\Users\DellUser\Documents\MATLAB\2.bmp');
inImg_2 = im2bw(inImg_2, 0.1);

subplot(6,2,2)
imshow(inImg_2);
title('Watermark Image');

%creating first share
[share1,share11,share12,share13]=CreateShare1(inImg_1,inImg_2);

%creating second share
[share2,share21,share22,share23]=CreateShare2(inImg_1,inImg_2);

%creating overlapped image
%share12=Overlapped(share1,share2);
%decrypting
original=secret(share13,share23);
watermark=water(share13,share23);
%Outputs

subplot(6,2,3)
imshow(share1);
title('Share 1');

subplot(6,2,4);
imshow(share2);
title('Share 2');

subplot(6,2,5)
imshow(share11);
title('Share 11');

subplot(6,2,6);
imshow(share21);
title('share 21');

subplot(6,2,7);
imshow(share12);
title('share 12');

subplot(6,2,8);
imshow(share22);
title('share 22');

subplot(6,2,9);
imshow(share13);
title('share 13');

subplot(6,2,10);
imshow(share23);
title('share 23');

subplot(6,2,11);
imshow(watermark);
title('watermark');

subplot(6,2,12);
imshow(original);
title('original');
%figure;imshow(share12);
%title('Overlapping Share 1 & 2');

imwrite(share1,'Share1.bmp');
imwrite(share2,'Share2.bmp');
imwrite(share12,'Overlapped.bmp');