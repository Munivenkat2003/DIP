clc;
close all;
clear all;
X = imread('C:\Users\Muni Venkat\Pictures\duke.png');
subplot(2,2,1);
imshow(X);
title('Input Image');

X = rgb2gray(X);
subplot(2,4,4);
imshow(X);
title('Grey Scale Image');

title('Converted Gray scale Image');
SE = strel('ball',5,5);
B = imdilate(X,SE);
subplot(2,2,3);
imshow(B);
title('Dilated Image');
C = imerode (X,SE);
subplot(2,2,4);
imshow(C);
title('Eroded Image')