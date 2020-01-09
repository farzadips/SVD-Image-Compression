clc; clear;
rice = imread('cs.png');

%convert to double 
I1 = im2double(rice);
%do SVD 
[u,s,v]=svd(I1);
s2 = s; 


%sefr kardan magadir vije
s2(20:end, :) = 0; %row 
s2(:, 20:end) = 0; %column
%print image
D1=u*s2*v'; 

%sefr kardan magadir vije
s2(10:end, :) = 0; %row 
s2(:, 10:end) = 0; %column
%print image
D2=u*s2*v'; 

%sefr kardan magadir vije
s2(5:end, :) = 0; %row 
s2(:, 5:end) = 0; %column
%print image
D3=u*s2*v';

figure;
subplot(1,4,1);imshow(rice,[]);
subplot(1,4,2);imshow(D1,[]);
subplot(1,4,3);imshow(D2,[]);
subplot(1,4,4);imshow(D3,[]);
