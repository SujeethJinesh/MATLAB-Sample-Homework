function proper = punchLine(filename)

fid = fopen(filename, 'r');

line = fgets(fid);

countSide = 0;

countDuck = 0;

countGirl = 0;

while ischar(line)
    
    numSpaces = sum(line == ' ');
    
    for n = 1:numSpaces
        
        [word, next] = strtok(line, ' ');
        
        switch word
            
            case 'side'
                
                countSide = countSide + 1;
                
            case 'duck'
                
                countDuck = countDuck + 1;
                
            case 'girl'
                
                countGirl = countGirl + 1;
                
        end
        
        line = next;
        
    end
    
    line = fgetl(fid);
end

[~, pos] = max([countSide, countDuck, countGirl]);

switch pos
    case 1
        proper = 'To get to the other side!';
    case 2
        proper = 'To get away from the duck!';
    case 3
        proper = 'To see about a girl!';
end

end