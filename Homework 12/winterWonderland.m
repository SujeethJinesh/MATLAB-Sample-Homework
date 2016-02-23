function winterWonderland(length, numBranches, typeSnowflake)

if length < 5
    axis square
    axis off
else
    degrees = 360/numBranches;
    
    switch typeSnowflake(1)
        case {'r'}
            subsectionLength = length/2;
            angle = 720/numBranches;
        case {'p'}
            subsectionLength = length/2;
            angle = 360/numBranches;
        case {'s'}
            subsectionLength = length;
            angle = 360/numBranches;
        case{'n'}
            subsectionLength = 0;
            angle = 0;
    end
    
    subsectionYLength = subsectionLength*sind(angle);
    subsectionXLength = subsectionLength*cosd(angle) + length;
    rotationMatrix = [cosd(degrees) -sind(degrees); sind(degrees) cosd(degrees)];
    x = length;
    y = 0;
    coordinates = [0 x subsectionXLength x subsectionXLength x 0; 0 y subsectionYLength y -subsectionYLength y 0];
    
    plot(coordinates(1,:), coordinates(2,:), 'b')
    hold on
    for i = 1:numBranches
        coordinates = rotationMatrix * coordinates;
        plot(coordinates(1,:), coordinates(2, :), 'b')
        hold on
    end
        
axis square

axis off

switch typeSnowflake(2)
    case {'h'}
        length = length - (200/length);
    case {'t'}
        length = length.^0.85;
    case{'e'}
        length = length - 10;
end

winterWonderland(length, numBranches, typeSnowflake);
        
end