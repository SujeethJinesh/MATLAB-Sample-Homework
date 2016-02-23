function [str, rupeeTotal] = templeOfTime(starting, cardinal, distance, letters, rupeeVal)

sum = 0;

str = [];

dist = distance(starting(1), starting(2));

while cardinal(starting(1), starting(2)) ~= 'D' & dist ~= 0 %executes functions

sum = sum + rupeeValFetcher(starting, rupeeVal);

letter = letterFetcher(starting, letters);

str = [str letter]

[starting, dist] = coordinateFetcher(starting, cardinal, distance);

end

sum = sum + rupeeValFetcher(starting, rupeeVal);

letter = letterFetcher(starting, letters);

str = [str letter]

[starting, dist] = coordinateFetcher(starting, cardinal, distance);

rupeeTotal = sum;

end

function [newCoordinate, dist] = coordinateFetcher(starting, cardinal, distance) %gets the new coordinates

x = starting(1);

y = starting(2);

dist = distance(x,y);

if cardinal(x,y) == 'N'
   
    x = x - dist;
    
elseif cardinal(x,y) == 'E'
    
    y = y + dist;
    
elseif cardinal(x,y) == 'W'
    
    y = y - dist;
    
elseif cardinal(x,y) == 'S'
    
    x = x + dist;

end

newCoordinate = [x y];

end

function output = rupeeValFetcher(starting, rupeeVal) %gets the new values of rupee

output = rupeeVal(starting(1), starting(2));

end

function output = letterFetcher(starting, letters) %gets the letters

output = letters(starting(1), starting(2));

end