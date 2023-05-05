clc
close all
clear all

img = imread("monedas.jpg");
img = rgb2gray(img);
figure(1)
imshow(img)

border = edge(img,"prewitt");
figure(2)
imshow(border)