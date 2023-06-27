Y=imread('C:\Users\Muni Venkat\Pictures\m.jpg');
X=Y(1:512,1:512);
figure;
imshow(uint8(X));
[a1,a2]=size(X);
disp('The number of rows in input image are'); 
disp(a1);
disp('The number of coloums in input image are'); 
disp(a2);
figure;
title('Input image');
% Perform single-level decomposition 
[cA1,cH1,cV1,cD1] = dwt2(X,'haar');
% Images coding. 
[C,S] = wavedec2(X,1,'haar');
A1 = wrcoef2('a',C,S,'haar',1);
H1 = wrcoef2('h',C,S,'haar',1); 
V1 = wrcoef2('v',C,S,'haar',1); 
D1 = wrcoef2('d',C,S,'haar',1); 
%Display the results of a first level decomposition.
colormap(gray);
subplot(2,2,1); image(wcodemat(A1,192));
title('Approximation A1')
subplot(2,2,2); image(wcodemat(H1,192));
title('Horizontal Detail H1')
subplot(2,2,3); image(wcodemat(V1,192));
title('Vertical Detail V1')
subplot(2,2,4); image(wcodemat(D1,192));
title('Diagonal Detail D1')
%Multi-level 1-D wavelet reconstruction.
re_ima1 = idwt2(cA1,cH1,cV1,cD1,'haar'); 
re_ima=uint8(re_ima1);
figure;
subplot(2,1,1);
imshow(uint8(X));
title('Input image');
subplot(2,1,2);
imshow(re_ima);
title('1-level reconstructed image');
figure;
%To perform a level 2 decomposition of the image
[C,S] = wavedec2(X,2,'haar');
% decomposse the image X in Level 2 
%image coding
A2 = wrcoef2('a',C,S,'haar',2);
A1 = wrcoef2('a',C,S,'haar',1);
H1 = wrcoef2('h',C,S,'haar',1); 
V1 = wrcoef2('v',C,S,'haar',1); 
D1 = wrcoef2('d',C,S,'haar',1); 
H2 = wrcoef2('h',C,S,'haar',2);
V2 = wrcoef2('v',C,S,'haar',2); 
D2 = wrcoef2('d',C,S,'haar',2);
colormap(gray);
subplot(2,4,1);image(wcodemat(A1,192));
title('Approximation A1')
subplot(2,4,2);image(wcodemat(H1,192));
title('Horizontal Detail H1')
subplot(2,4,3);image(wcodemat(V1,192));
title('Vertical Detail V1')
subplot(2,4,4);image(wcodemat(D1,192));
title('Diagonal Detail D1')
subplot(2,4,5);image(wcodemat(A2,192));
title('Approximation A2')
subplot(2,4,6);image(wcodemat(H2,192));
title('Horizontal Detail H2')
subplot(2,4,7);image(wcodemat(V2,192));
title('Vertical Detail V2')
subplot(2,4,8);image(wcodemat(D2,192));
title('Diagonal Detail D2')
dec2d = [A2,A1,H1,V1,D1,H2,V2,D2];
%Multi-level 2-D wavelet reconstruction.
re_ima1 = waverec2(C,S,'haar'); 
re_ima=uint8(re_ima1);
figure;
subplot(2,1,1);
imshow(uint8(X));
title('Input image');
subplot(2,1,2);
imshow(re_ima);
title('2-level reconstructed image');
