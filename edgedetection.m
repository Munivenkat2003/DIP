clc;
close all;
clear all;
X = imread('C:\Users\Muni Venkat\Pictures\duke.png');

X = rgb2gray(X);
subplot(2,4,4);
imshow(X);
title('Grey Scale Image');

iml=medfilt2(X,[3 3]);
BW1 = edge(iml,'sobel');
BW2 = edge(iml,'prewitt');
msk=[0 0 0 0 0;
    0 1 1 1 0;
    0 1 1 1 0;
    0 0 0 0 0;];
B=conv2(double(BW1),double(msk));
subplot(3,2,1);
imshow(X);
title('Input Image');
subplot(3,2,2);
imshow(iml);
title('Filtered Image');
subplot(3,2,3);
imshow(BW1)
title('sobel edge');
subplot(3,2,4);
imshow(BW2);
title('Prewitt edge');
subplot(3,2,5);
imshow(B);
title('smooth image');
