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

SE = strel('disk',5);
B = imopen(X,SE);
subplot(2,2,2);
imshow(B);
title('Opening in Image');
C = imclose(X,SE);
subplot(2,2,3);
imshow(C);
title('Closing in Image');