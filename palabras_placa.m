clc
clear all
close all

img = imread("ultimas-placas-de-matricula-de-coches-en-el-reino-unido-publicadas-en-septiembre-de-2009-en-devon-bdjr92.jpg");

ocr_palabras = ocr(img);

palabras = ocr_palabras.Words;
disp([palabras])
bbox = ocr_palabras.WordBoundingBoxes;

figure(1)
imshow(img)
hold on

for i=1:length(bbox)
    rectangle("position", bbox(i,:),"EdgeColor","r","LineWidth",3)
end
hold off