clc
close all
clear all

img = imread('Img-post-medicina-corazon.jpg');
img = imnoise(img,"gaussian");

figure(1)
imshow(img)

%k_1 = fspecial("average",[5,5]);%kernel

%k_2 = [0 -1 0; -1 5 -1; 0 -1 0];
%k_2 = [-1 -1 -1; -1 9 -1; -1 -1 -1];

k_3 = [-2 -1 0; -1 1 1; 0 1 2];

%convolucion

img_dif = imfilter(img,k_3);
figure(2)
imshow(img_dif)
