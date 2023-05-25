clear all
close all
clc


%palabra = char("Hola")

img =imread('palabras.jpg');
ocr_palabras = ocr(img);
palabras = ocr_palabras.Words;

for i =1:length(palabras)
    caracter = char(palabras(i));
 NET.addAssembly('system.speech');

obj = system.speech.synthesis.speechSynthesizer;

obj.volume = 100;
speak(obj,caracter)
end 