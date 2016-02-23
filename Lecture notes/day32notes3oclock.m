day 32 - more images
color blocking
color only part of an image
car = imread('Volta.jpg');
car2 = car;
[rows cols colors] = size(car)
halfr = floor(rows/2)
halfc = floor(cols/2)
car2(halfr+1:rows, 1:halfc,:) = 255;
figure(1)
imshow(car2);
% try this: make the left half of the pic maximize the blue
% on the right half, maximize the red
car3 = car;
car3(:, 1:halfc,3) = 255;
car3(:, halfc+1:end,1) = 255;
figure(2)
imshow(car3);

% cropping is super easy with logical indexing
% crop off the left and right and top and bottom 10%
startr = floor(.1 * rows)
endr = floor(.9 * rows)
startc = floor(.1 * cols)
endc = floor(.9 * cols)

car4 = car(startr:endr,startc:endc,:);
figure(3)
imshow(car4);

% easy to use functions for images: imrotate (rotate an image)
% imresize (resize an image)

car5 = imrotate(car,66);   % rotate car 66 degrees
figure(4)
imshow(car5);   % notice how it is stored!

car6 = imresize(car,[200,800]);
figure(5)
imshow(car6);
% resizing could also be done with linspace

% two more useful functions rgb2gray and im2bw
% rgb2gray converts to grayscale
% im2bw convert to black and white
cargray = rgb2gray(car);
figure(6)
imshow(cargray);

% im2bw only operates on a grayscale image
% must do rgb2gray first
figure(7)
carbw = im2bw(cargray);
imshow(carbw);

create an image of a flag

rows = 400
cols = 600
flag = uint8(zeros(rows,cols,3));  % must be uint8
flag1 = flag;
topthird = floor(rows/3);
midthird = 2 * topthird;
flag1(1:topthird,:,:) = 255;  % 1/3 is white
gold is 207,181,59
flag1(topthird+1:midthird,:,1) = 207;
flag1(topthird+1:midthird,:,2) = 181;
flag1(topthird+1:midthird,:,3) = 59;
flag1(midthird+1:end,:,3) = 128;   % medium blue
figure(10)
imshow(flag1);

try this: create a flag of four stripes, where the fourth is your
favorite color
coral: 240,128,128
flag2 = flag;
topquarter = floor(rows/4);
half = 2 * topquarter;
threequarter = 3 * topquarter;
flag1(1:topquarter,:,:) = 255;  % 1/4 is white
gold is 207,181,59
flag2(topquarter+1:half,:,1) = 207;
flag2(topquarter+1:half,:,2) = 181;
flag2(topquarter+1:half,:,3) = 59;
flag2(half+1:threequarter,:,3) = 128;
flag2(threequarter+1:end,:,1) = 240; 
flag2(threequarter+1:end,:,2) = 128;
flag2(threequarter+1:end,:,3) = 128;


figure(12)
imshow(flag2);

