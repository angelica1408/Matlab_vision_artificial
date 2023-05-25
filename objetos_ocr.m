clear all
close all
clc
net = googlenet();
cantidad_objetos = net.Layers(end);

img = imread('carro.jpg');
figure(1)
imshow(img)

sz = net.Layers(1).InputSize;
img_rsz = imresize(img,[sz(1),sz(2)]);
label = classify(net, img_rsz)

caracter = char(label);
 NET.addAssembly('system.speech');

% obj = system.speech.synthesis.speechSynthesizer;
% 
% obj.volume = 100;
% obj.Rate;500;
% speak(obj,caracter)
