clc;
clear all;
close all;
a=imread('C:\Users\Muni Venkat\Pictures\m.jpg');
b=input('Enter the row < size of the matrix');
c=input('Enter the column < size of matrix');
N4=[a(b+1,c),a(b-1,c),a(b,c+1),a(b,c-1)]
N8=[a(b+1,c),a(b-1,c),a(b,c+1),a(b,c-1),a(b+1,c+1),a(b+1,c-1),a(b-1,c-1),a(b-1,c+1)]
ND=[a(b+1,c+1),a(b+1,c-1),a(b-1,c-1),a(b-1,c+1)]