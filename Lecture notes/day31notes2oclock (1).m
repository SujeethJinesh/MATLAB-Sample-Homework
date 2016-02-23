% % day 31 images
% % images are stored as rows, columns, and colors
% % the colors are red, green and blue uint8 (holds a number between 0 and
% % 255)
% clear;close all; clc;
figure(1)
buzz = imread('buzz.jpg');   % don't forget the ;
imshow(buzz);
[rows cols colors] = size(buzz)
half = floor(cols/2)
buzz(1:60,30:50,1) = 255;    % maximizes the red in some locations
buzz(1:60,30:50,2) = 255;% maximizes green
buzz(1:60,30:50,3) = 255;  % maximizes blue
% 
% % swapping the colors
% figure(3)
% buzz = buzz(:,:,[2 1 3]);   % red and green are swapped all rows & cols
% imshow(buzz);
% 
% % if you do imread again you can get a clean copy of buzz
% buzz = imread('buzz.jpg')
% 
% figure(4)
% snow = imread('snow.jpg');
% [rows,cols,colors] = size(snow)
% imshow(snow);
% 
% % turn snow upside down
% snow2 = snow;   % make a copy
% snow2 = snow(end:-1:1,:,:);
% figure(5)
% imshow(snow2);
% 
% % mirror the snow picture
% figure(6)
% snow3 = snow;
% half = floor(rows/2);
% snow3(1:half,:,:) = snow(end:-1:rows-half+1,:,:);
% imshow(snow3);

%
% change the color layers to create nice effects

% produce the negative
figure(7)
butter = imread('butterfly.jpg');
imshow(butter);

figure(8)
negbutter(:,:,1) = 255 - butter(:,:,1); % change each color to its opposite value
negbutter(:,:,2) = 255 - butter(:,:,2);
negbutter(:,:,3) = 255 - butter(:,:,3);
imshow(negbutter);

% posterizing - if a color exists make it super bright
%
figure(9)
postbutter = butter;
postbutter(butter(:,:,1)>128) = 255;
postbutter(butter(:,:,2)>128) = 255;
postbutter(butter(:,:,3)>128) = 255;
imshow(postbutter);

postsnow = snow;
postsnow(snow(:,:,1)>128) = 255;
postsnow(snow(:,:,2)>128) = 255;
postsnow(snow(:,:,3)>128) = 255;
imshow(postsnow);


% try this
% create 4 subplots each with an image in it
% all 4 images should be the Volta.jpg
car = imread('Volta.jpg')
car1 = car;
car2 = car;
car3 = car;
car4 = car;
figure(10)
subplot(2,2,1);
car1= car(end:-1:1,:,:);
imshow(car1);
subplot(2,2,2);
imshow(car2);
subplot(2,2,3);
imshow(car3);
subplot(2,2,4);
imshow(car4);

% pic 1 should be an upside down car
% pic 2 should be a black and white car
% pic 3 should have a border around it 10 pixels wide
% pic 4 should be mirrored left to right

