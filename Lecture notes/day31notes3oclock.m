% % day 31 - images
% % images are stored as 3 planes of color numbers - rgb
% % rows, columns and the number values for red, green and blue
% % rows x columns x 3  of uint8 values (0 to 255)
% %
figure(1)
buzz = imread('buzz.jpg');  % don't forget the ;
imshow(buzz);
% 
figure(2)
buzz2 = buzz; % make a copy
buzz2(1:60,1:60,1) = 255;  % maximize red on one portion
imshow(buzz2);
% 
% [rows,cols,colors] = size(buzz)
% 
% % swap some of buzz's colors
figure(3)
buzz3 = buzz(:,:,[3 1 2]);
imshow(buzz3);
% 
% % the colors can never exceed 255, will just = 255 
% % add to the colors to make them brighter
% 
figure(4)
buzz4 = buzz + 50;
imshow(buzz4);

figure(5)
snow = imread('snow.jpg');
[rows,cols,colors] = size(snow)
imshow(snow);

% figure(6)
% % turn snow pic upside down
% snow2 = snow(end:-1:1,:,:);
% imshow(snow2);
% 
figure(7)
% mirror the snow bottom to top
half = floor(rows/2)   % halfway point
snow3 = snow;
snow3(1:half,:,:) = snow(end:-1:rows-half+1,:,:);
imshow(snow3);


% cool color effects
% negate - change the colors to be their negative val
%
butter = imread('butterfly.jpg');
butterneg = 255 - butter;
imshow(butterneg);

% posterize - cartoon - 
% if a color exists, make it super bright
figure(11)
postbutter = butter;
postbutter(butter(:,:,1)>128) = 255; % 128 is half of 255
postbutter(butter(:,:,2)>128) = 255;
postbutter(butter(:,:,3)>128) = 255;
imshow(postbutter)
figure(12)
postbutter2 = butter;
postbutter2(butter > 128) = 255;
imshow(postbutter2);

% try this: subplot four pictures of the Volta.jpg
% on one page

car = imread('Volta.jpg');
figure (13)
subplot(2,2,1);
imshow(car);
title('Normal');
subplot(2,2,2);
car2 = car(end:-1:1,:,:);
imshow(car2);
title('Upside Down');
subplot(2,2,3);
imshow(car);
subplot(2,2,4);
imshow(car);
