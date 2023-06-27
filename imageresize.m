clc;
close all;
clear all;
X = imread('C:\Users\Muni Venkat\Pictures\duke.png');
subplot(2,2,1);
imshow(X);
title('Original Image');

B=imresize(X,5);
subplot(2,2,2);
imshow(B);
title('Bilnear Image');

C=imresize(X,5,'nearest');
subplot(2,2,3);
imshow(C);
title('Nearest Image');

D=imresize(X,5,'Bicubic');
subplot(2,2,4);
imshow(D);
title('Bicubic Image');