function [xx, yy, zz] = rotateObject(x, y, z, axis, angle)

xx = [];

yy = [];

zz = [];

[row, col] = size(x);

switch axis
    
    case 'x'
        
        rotation = [1 0 0; 0 cos(angle) -sin(angle); 0 sin(angle) cos(angle)];
        
    case 'y'
        
        rotation = [cos(angle) 0 sin(angle); 0 1 0; -sin(angle) 0 cos(angle)];
        
    case 'z'
        
        rotation = [cos(angle) -sin(angle) 0; sin(angle) cos(angle) 0; 0 0 1];
        
end

for i = 1:row
    
    for j = 1:col
        
        vec = rotation * [x(i, j); y(i, j); z(i, j)];
        
        xx(i, j) = vec(1);
        
        yy(i, j) = vec(2);
        
        zz(i, j) = vec(3);
        
    end
    
end

end