clc;
close all;
clear all;
A = imread('C:\Users\Muni Venkat\Pictures\duke.png');
AB=rgb2gray(A);
figure,imshow(AB);
title('grey image');
B=imnoise(AB,'gaussian',0,0.1);
subplot(2,2,1);
imshow(B);
title('Gaussian noise affected Image');

C=imnoise(AB,'poisson');
subplot(2,2,2);
imshow(C);
title('Poission noise affected Image');

B=imnoise(AB,'salt & pepper',0.02);
subplot(2,2,3);
imshow(B);
title('salt & pepper noise affected image');

C=imnoise(AB,'speckle',0.04);
subplot(2,2,4);
imshow(C);
title('speckle noise affected image');
