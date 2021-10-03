clc;
% im=imread('cars_10.pgm');
% im2=rgb2gray(im);
% im2(im2<255)=0;
% BW = ~im2bw(im2);
% 
% imwrite(BW, 'gt.jpg');
% BW(:,1:260) = 0;
% BW(:,end-76:end) = 0;
% BW(1:100,:) = 0;
% BW = bwareaopen(BW,1000,8);


% ----------------------------------------------------

im = imread('cars_10.pgm');
imwrite(im, 'gt.jpg');