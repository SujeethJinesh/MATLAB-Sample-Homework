function plotShapes(shape, diam, degs, translation)

if strcmp(shape,'square')
    
    degs = -degs;
    
    x = transpose([-diam/2 -diam/2 diam/2 diam/2 -diam/2]);
    y = transpose([-diam/2 diam/2 diam/2 -diam/2 -diam/2]);
    
    rotation = [x, y]*[cosd(degs) sind(degs); -sind(degs) cosd(degs)];
    
    x = rotation(:, 1) + translation(1);
    y = rotation(:, 2) + translation(2);
    
    plot(x, y, 'k-');
else
    
    x = (diam/2)*cos(linspace(0,2*pi)) + translation(1);
    
    y = (diam/2)*sin(linspace(0, 2*pi)) + translation(2);
    
    plot(x, y, 'k-');
    
end

axis([-diam diam -diam diam]);

axis square;

end