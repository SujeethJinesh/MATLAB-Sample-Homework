function logic = fountainOfYouth(matrix)

logic = wrapper(matrix);

end

function [logic] = wrapper(matrix)

[index, ~] = size(matrix);

logic = false;

if index > 0

    [outSpace, outX] = perimCheck(matrix);

if sum(outX) == 1
    
    logic = true;
    
elseif index >= 2
    
    if (outSpace)
        
    matrix(1, :) = [];   %removes first row

    matrix(end, :) = []; %removes last row
    
    matrix(:, 1) = []; %removes first column
    
    matrix(:, end) = []; %removes last column
    
    [logic] = wrapper(matrix);
    end
    
else
    
    logic = false;
end
end

end

function [outSpace, outX] = perimCheck(matrix)

[index, ~] = size(matrix);

stuff1 = [sum(matrix(1, :) == ' '), sum(matrix(end, :) == ' '), sum(matrix(:, 1) == ' '), sum(matrix(:, end) == ' ')];

stuff2 = [sum(matrix(1, :) == 'X'), sum(matrix(end, :) == 'X'), sum(matrix(:, 1) == 'X'), sum(matrix(:, end) == 'X')];

if sum(stuff1) >= 1

    outSpace = true; 
else
    
    outSpace = false;
end

if sum(stuff2)

    outX = true;
    
else
    outX = false;
end

end
