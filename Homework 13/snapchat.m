function snapchat(filename, numSwipes, geofilter)

img = imread(filename);

numSwipes = mod(numSwipes, 5);

switch numSwipes


case 1
        
        img = imcomplement(img);
        
    case 2
        
        img = 0.2989*img(:,:,1) + 0.5870*img(:,:,2) + 0.1140*img(:,:,3);
        
    case 3
        
        img = double(img);
        img = img./255;
               
        img = rgb_hsl(img, 'HSL');
        
        img(:,:,2) = geofilter.*img(:,:,2);
        
        img = rgb_hsl(img, 'RGB');
        img = img.*255;
        img = round(img);
        
        img = uint8(img);
        
        imshow(img);
        
    case 4
        
        array = geofilter;
        
        [rowImg, colImg, ~] = size(img);
        
        array = imresize(geofilter, [rowImg, colImg]);
        
        for n = 1:rowImg
    
            for m = 1:colImg
        
                if (array(n,m,1) <= 150 & array(n,m,2) >= 180 & array(n,m,3) <= 120)
            
                    array(n,m, :) = img(n,m, :);
                
                end
        
            end
    
        end
        
        img = array;
end

imwrite(img, [strtok(filename, '.') '_filtered.png'])

end