tic;
clc;
clear all;
close all;

%reading the input image
input_IMG = imread('C:\Users\DellUser\Documents\MATLAB\51.jpg');
%{
a=[255 12 125 4 210 56 183];
b=[17 247 22 251 90 3 111];
c=[115 98 244 65 233 24 234];
inImg=[a
b
c];
%}
inImg = mat2gray(input_IMG,[0,255]);
%inImg = uint8(inImg_mat);

figure;imshow(inImg);title('Secret Image');

%calling division function
[share1, share2, share3]=generateShare(inImg);
    %calling createshare functions

%call decrypt image
output=decrypt(share1,share2,share3);

%display output
share11=mat2gray(share1,[0,255]);
share22=mat2gray(share2,[0,255]);
share33=mat2gray(share3,[0,255]);

figure;imshow(share11);title('Share 1');
figure;imshow(share22);title('Share 2');
figure;imshow(share33);title('Share 3');
figure;imshow(output);title('Output');

%saving outputs
imwrite(share1,'C:\Users\DellUser\Desktop\Sem VI\RnD\Division-2\share1.png');
imwrite(share1,'C:\Users\DellUser\Desktop\Sem VI\RnD\Division-2\share2.png');
imwrite(share1,'C:\Users\DellUser\Desktop\Sem VI\RnD\Division-2\share3.png');
imwrite(share1,'C:\Users\DellUser\Desktop\Sem VI\RnD\Division-2\Overlapped.png');
toc