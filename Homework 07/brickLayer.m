function output = brickLayer(vertical, horizontal, color)

[dash, color] = dashColorMaker(color);  

arr = arrGenerator(vertical, horizontal, color, dash);

dashColorLength = length(dash);

output = zeros(vertical, horizontal*dashColorLength);

length1 = horizontal*dashColorLength;

for m = 0:vertical-1 %executes the function for given values

    if m == vertical
        break;
    end
    
    for n = 1:length1
    
        output(m + 1,1:length1) = arr(1,m*length1 + 1:(m+1)*length1);
        
    end
end

output = char(output);

end

function [dash, color] = dashColorMaker(color) %creates the brick that will be used to lay the array.

dash = '-';

for n = 1:length(color)-1
    dash = [dash '-'];
end

dash = [' [' dash '] ']; %concatenates the dashes and the colors

color = [' [' color '] '];

end

function arr = arrGenerator(vertical, horizontal, color, dash) %this takes the bricks and puts them into an array

output = [];

for m = 0:vertical-1
    for n = 0:horizontal-1 %puts all the bricks in a line according to the 
        if mod(m+n,2) == 0
           output = [output color];
        else
           output = [output dash];
        end
    end
end

arr = output;

end