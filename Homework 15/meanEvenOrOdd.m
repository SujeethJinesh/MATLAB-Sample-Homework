function output = meanEvenOrOdd(vec, string)

switch string
    case 'even'

        mask = mod(vec,2) == 0;
        
        newVec = vec(mask);
        
        output = mean(newVec);
        
    case 'odd'
        
        mask = mod(vec,2) == 1;
        
        newVec = vec(mask);
        
        output = mean(newVec);
end

end