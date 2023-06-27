clc;
close all;
clear all;
A = imread('C:\Users\Muni Venkat\Pictures\duke.png');
subplot(2,3,1);
imshow(A);
title('colour Image');
B = rgb2gray(A);
subplot(2,3,2);
imshow(B);
title('Grey Scale Image');
subplot(2,3,3);
imhist(B);
title('Histogram plot of gray scale image');
J = histeq(B);
subplot(2,3,4);
imshow(J)
title('Contrast Enhanced image');
subplot(2,3,5);
imhist(J)
title('Histogram of contrast enhanced image')
