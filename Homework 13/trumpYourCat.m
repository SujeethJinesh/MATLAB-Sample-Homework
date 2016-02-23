function trumpYourCat(cat, toupee)

catImg = imread(cat);

toupeeImg = imread(toupee);

[row, col, ~] = size(toupeeImg);

for n = 1:row
    
    for m = 1:col
        
        if (toupeeImg(n,m,1) <= 150 & toupeeImg(n,m,2) >= 180 & toupeeImg(n,m,3) <= 120)
            
            toupeeImg(n,m, :) = catImg(n,m, :);
        end
        
    end
    
end

file = ['trumped_' strtok(cat, '.') '.png'];

imwrite(toupeeImg,file);

end