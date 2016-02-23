function output = rainfall(size, startingHeight)

if startingHeight <= 0
    
    output = size;
    
elseif startingHeight > 0 & size < 4
    
    output = rainfall(1.5.*size, startingHeight - 50);
    
elseif size >= 4 & startingHeight > 0

    output = rainfall(size./2, startingHeight - 50);
    
end

end