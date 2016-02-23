function output = speedStack(baseLength, pyrChar)

numToWrite = 1;

starter = baseLength;

output = speedStackWrapper(baseLength, pyrChar, numToWrite, starter);

end

function output = speedStackWrapper(baseLength, pyrChar, numToWrite, starter)

base = zeros(1, 2.*baseLength - 1);

base(base == 0) = ' ';

if numToWrite == baseLength
    
    for n = 1:2:(2.*baseLength - 1)
    
            base(n) = pyrChar;
        
    end

    output = base;
    
else
    
    if mod(numToWrite, 2) == 0
    
        for n = starter:2:(2.*baseLength - 1) - starter + 1
            
            base(n) = pyrChar;
        
        end
    else 
        
        for n = starter:2:(2.*baseLength - 1) - starter + 1
    
            base(n) = pyrChar;
        
        end
    
    end
  
    numToWrite = numToWrite + 1;
    
    starter = starter - 1;
    
    output = [base; char(speedStackWrapper(baseLength, pyrChar, numToWrite, starter))];
end

end