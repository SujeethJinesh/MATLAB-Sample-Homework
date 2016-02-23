function final = structDisp(array)

[r, c] = size(array);

final = [];

    for i = 1:r
        char = '';
        for j = 1:c
            nextChar = spaceAdjuster(struct2charArr(array(i,j)));
            
            char = [char, nextChar];
        end
        
        final = [final; char];
    end
end


function output = spaceAdjuster(input)

[r,c] = size(input);

if c < 50
    
    add = zeros(r, 50 - c);
    
    add(add == 0) = ' ';
    
    input = [input add];
    
elseif c > 50

    input = input(:,1:50);
    
end

output = input;

end