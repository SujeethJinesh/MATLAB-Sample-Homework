function out = determinant(matrix)

counter = 1;

sum = 0;

out = determinantWrap(matrix, sum, counter);

end

function out = determinantWrap(matrix, sum, counter)

[index,~] = size(matrix);

if index == 2

    out = matrix(1,1).*matrix(2,2) - matrix(2,1).*matrix(1,2);
    
else
    for n = 1:index
        
        temp = matrix;
        
        multiply = matrix(1,n);
        
        matrix(1, :) = [];

        matrix(:, n) = [];
        
        if (mod(n,2) == 1 & mod(counter, 2) == 1) | (mod(n,2) == 0 & mod(counter, 2) == 0)
            stuff = 1;
        elseif (mod(n,2) == 1 & mod(counter, 2) == 0) |(mod(n,2) == 0 & mod(counter, 2) == 1)
            stuff = -1;
        end
        
        sum = sum + stuff.*multiply.*determinantWrap(matrix, sum, counter);
        
        matrix = temp;
        
        out = sum;
    end
    counter = counter + 1;
end

end

