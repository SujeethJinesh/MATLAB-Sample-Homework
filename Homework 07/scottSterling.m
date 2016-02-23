function output = scottSterling(arr)

x1 = 12;

y1 = 6;

[~, col] = size(arr);

sum = 0;

for n = 1:col %loops through the points

    x2 = arr(1,n);
    
    y2 = arr(2,n);
    
    if x2 >= 0 & x2 <= 24 & y2 <= 8 & y2 >= 0
        sum = points(x1, x2, y1, y2) + sum;
        
        x1 = x2;
        
        y1 = y2;
    end

end

output = sum;

end

function points = points(x1, x2, y1, y2) %figures out the points to put in

distance = sqrt((x1-x2).^2+(y1-y2).^2);

points = distance./8;

end