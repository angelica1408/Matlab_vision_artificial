clear all
close all
clc
webcamlist;
cam = webcam(1);
net = googlenet();



%cantidad_objetos = net.Layers(end);
%img = imread('carro.jpg');

sz = net.Layers(1).InputSize;
figure(1)
while true
    img = snapshot(cam);
    img_rsz = imresize(img,[sz(1),sz(2)]);
    label = classify(net, img_rsz)
    imshow(img)
    text(50,50, char(label), "color","while","FontSize",20)
    imshow(img)
end 

% obj = system.speech.synthesis.speechSynthesizer;
% 
% obj.volume = 100;
% obj.Rate;500;
% speak(obj,caracter)