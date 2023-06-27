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

N = imnoise(X,'gaussian',0,0.025);
subplot(2,2,2);
imshow(N);
title('Image with Added Gaussian Noise');
K = medfilt2(N,[7 7]);
subplot(2,2,3);
imshow(K);
title('Image with Noise Removed by Median Filter');
