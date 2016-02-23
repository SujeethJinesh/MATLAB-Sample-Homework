function flyPropellerHat

%initialized initials

radiusCap = 2;
coeffs = [-0.5 0 2];

radiusPropeller = 3;
minimum = -pi;
maximum = pi;

radiusBill = 4;
length = 1;

whichAxis = 'z';
angle = 0.2;

[xxCap, yyCap, zzCap] = makeCap(radiusCap, coeffs);
[xxBill, yyBill, zzBill] = makeBill(length, radiusBill);
[xxPropeller, yyPropeller, zzPropeller] = makePropeller(minimum, maximum, radiusPropeller);

%coordinate fixing

%xxBill = radiusCap + xxBill;
zzPropeller = radiusCap + zzPropeller;
zzBill = zzBill - radiusCap;

go = true;

%Other head/cap code

origxxCap = xxCap;
origyyCap = yyCap;
origzzCap = zzCap;
origxxBill = xxBill - .75;
origyyBill = yyBill;
origzzBill = zzBill;
origxxPropeller = xxPropeller;
origyyPropeller = yyPropeller;
origzzPropeller = zzPropeller;

[xSphere ySphere zSphere] = sphere(10);

%different rgb values and color matrices

Green = cat(3, ones(100,100), ones(100,100), ones(100,100));
Green(:,:,1) = 0;
Green(:,:,2) = 255;
Green(:,:,3) = 0;

Blue = cat(3, ones(100,100), ones(100,100), ones(100,100));
Blue(:,:,1) = 0;
Blue(:,:,2) = 0;
Blue(:,:,3) = 255;

Red = cat(3, ones(100,100), ones(100,100), ones(100,100));
Red(:,:,1) = 255;
Red(:,:,2) = 0;
Red(:,:,3) = 0;

[y,Fs]=audioread('andHisNamesJohnCena.wav');
sound(y,Fs);

%the while loop that actually goes through the animation

while go
    surf(origxxCap + 2*radiusCap, origyyCap + 2*radiusCap, origzzCap + 2*radiusCap, Green);
    shading flat
    lightangle(45, 45)
    hold on
    
    surf(origxxPropeller + 2*radiusCap, origyyPropeller + 2*radiusCap, origzzPropeller + 2*radiusCap, Blue);  
    shading flat
    lightangle(45, 45)
    hold on
    
    surf(3.*xSphere + 2.*radiusCap, 3.*ySphere + 2.*radiusCap, 3.*zSphere + 2.*radiusCap)
    shading flat
    lightangle(45, 45)
    hold on
    
%rotating cap

    surf(xxCap - radiusCap, yyCap - radiusCap, zzCap - radiusCap, Red);
    shading flat
    lightangle(45, 45)
    hold on
    
    surf(xxBill - radiusCap, yyBill - radiusCap, zzBill, Red);
    shading flat
    lightangle(45, 45)
    hold on
    
    surf(xxPropeller - radiusCap, yyPropeller - radiusCap, zzPropeller - radiusCap, Red);
    shading flat
    lightangle(45, 45)
    hold on
    
    %Adjust location of hat. Perhaps use your rotateObject function.
    
    [xxCap, yyCap, zzCap] = rotateObject(xxCap, yyCap, zzCap, whichAxis, angle);
    [xxBill, yyBill, zzBill] = rotateObject(xxBill, yyBill, zzBill, whichAxis, angle);
    [xxPropeller, yyPropeller, zzPropeller] = rotateObject(-xxPropeller, -yyPropeller, zzPropeller, whichAxis, angle);
    [xxPropeller, yyPropeller, zzPropeller] = rotateObject(-xxPropeller, -yyPropeller, zzPropeller, whichAxis, angle);
    [xxPropeller, yyPropeller, zzPropeller] = rotateObject(-xxPropeller, -yyPropeller, zzPropeller, whichAxis, angle);
    
    %Adjust the axes so the propeller hat is in full view the entire
    %time. Also turn the axes off.
    axis equal
    axis manual
    axis([-5 5 -5 5 -5 5])
    axis off

    %read in the image and display the image (twitter logo for this
    %instance)
    
    im = imread('twitter logo.png');
    imshow(im)
    hold on
    
    %pause so that we can see the rotation
    
    pause(0.1)
    hold off
end


end

%I have created a propeller hat with a child and a twitter logo on the
%bottom and added sound to add to the mood
