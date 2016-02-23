function sentence = checkImage(name1, name2)

img1 = imread(name1);
img2 = imread(name2);

[row1, col1] = size(img1);
[row2, col2] = size(img2);

if(isequal(row1, row2) & isequal(col1, col2) & isequal(img1, img2))
    sentence = 'The images are the same.';
    
elseif (~isequal(row1, row2) | ~isequal(col1, col2))
    
    sentence = 'The images have different dimensions.';

elseif ~isequal(img1, img2) & isequal(row1, row2) & isequal(col1, col2)
    
    sentence = 'The RGB values are different.';

    array = 255.*ones(row1, col1/3);
    
    array(img1(:,:,1) ~= img2(:,:,1)) = 0;
    
    array(img1(:,:,2) ~= img2(:,:,2)) = 0;
    
    array(img1(:,:,3) ~= img2(:,:,3)) = 0;
    
    filename = [strtok(name1, '.') 'VS' strtok(name2, '.') '.png'];
    
    imwrite(array, filename, 'png');
end

end