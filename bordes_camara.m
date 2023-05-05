clc
close all
clear all

webcamlist();

cam = webcam(1);
cam.Resolution =

while true

    img = snapshot(cam);
    img = rgb2gray(img);
    img = edge(img,"canny");

    figure(1)
    imshow(img)
end

