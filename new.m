clc;
close all;
clear all;
X = imread('C:\Users\Muni Venkat\Pictures\duke.png');
x1=input('enter the value of x1=');
x2=input('enter the value of x2=');
y1=input('enter the value of y1=');
y2=input('enter the value of y2=');
D=sqrt((x1-x2)^2+(y1-y2)^2);
disp('the value of euclid distance=',D);