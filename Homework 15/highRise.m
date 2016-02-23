function highRise(profiles)

successiveWidth = 0;

for n = 1:length(profiles)

    height = profiles(n, 1);
    
    width = profiles(n, 2);
    
    blueOrBlack = mod(n,2);
    
    switch blueOrBlack
        case 0
            
            color = 'k';
            
        case 1
            
            color = 'b';
    
    end
    
    rectangle('Position', [successiveWidth, 0, width, height], 'EdgeColor', color)
    
    successiveWidth = successiveWidth + width + 1;
end
    
end