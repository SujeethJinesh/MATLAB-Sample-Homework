% day 32 - more images
%
 clc;clear;close all;
%color blocking
buzz = imread('buzz.jpg');
buzz2 = buzz;
[rows cols colors] = size(buzz)
halfr = floor(rows/2);   
halfc = floor(cols/2);
buzz2(halfr:rows, 1:halfc,1) = 255;
figure(1)
imshow(buzz2)
% try this... maximize the green on the left half of buzz
% and remove all green on the right half of buzz
buzz3 = buzz;
[rows cols colors] = size(buzz)   
halfc = floor(cols/2);
buzz3(:, 1:halfc,2) = 255;
buzz3(:,halfc+1:cols,2) = 0;
figure(2)
imshow(buzz3)

% cropping is super easy with logical indexing
buzz4 = buzz(10:100,10:80,:);
figure(3)
imshow(buzz4);

% functions that exist: imrotate, imresize

butter = imread('butterfly.jpg');
% figure(4)
% imshow(butter);
% figure(5)
% butter2 = imrotate(butter, 66);   % rotate 66 degrees
% imshow(butter2);

% rotate buzz


figure(6)
buzzrot = imrotate(buzz, 66);   % rotate 66 degrees
imshow(buzzrot);

figure(7)
buzzbig = imresize(buzz,[400,400]);
imshow(buzzbig);

%  two other useful functions rgb2gray  and im2bw
%make an image grayscale with rgb2gray:
buzzgray = rgb2gray(buzz);
figure(8)
imshow(buzzgray);   % grayscale is the average of r and g and b values
% image to bw requires it to first be grayscale
figure(9)
buzzbw = im2bw(buzzgray);
imshow(buzzbw);

buttergray = rgb2gray(butter);
figure(10)
imshow(buttergray);   % grayscale is the average of r and g and b values
% image to bw requires it to first be grayscale
figure(11)
butterbw = im2bw(buttergray);  % stored as a logical
imshow(butterbw);


%create your own image - of a flag
rows = 400
cols = 600
fla = zeros(rows,cols,3);
flag = uint8(fla);
flag1 = flag;
topthird = floor(rows/3);
midthird = 2 * topthird
flag1(1:topthird,:,:) = 255;  % top third all white
%the rgb for gold is 207,181,59
flag1(topthird+1:midthird,:,1) = 207;  
flag1(topthird+1:midthird,:,2) = 181;  
flag1(topthird+1:midthird,:,3) = 59;  
flag1(midthird+1:end,:,3) = 128;  % red & green already zero
figure(21)
imshow(flag1);

% try this: make a flag which is 
% all green on the left third, all blue on the middle
% third and all red on the right third


flag2 = flag;
leftthird = floor(cols/3);
midthird = 2 * leftthird
flag2(:,1:leftthird,2) = 255;  % left third all green
 
flag2(:,leftthird+1:midthird,3) = 255; % middle all blue 

flag2(:, midthird+1:end,1) = 255;  % red on right
figure(22)
imshow(flag2);