
% funtion to add up individual costs, calculate tax, and round total cost

function [totalCost] = dormTape(numBlocks, goldFrac, whiteFrac, blueFrac, tapable)

sum = gold(numBlocks, goldFrac, tapable) + blue(numBlocks, blueFrac, tapable) + white(numBlocks, whiteFrac, tapable);

totalCost = ceil(100*(1.08*sum))/100;

end

%calculates cost of gold tape

function [goldCost] = gold(numBlocks, goldFrac, tapable)

goldCost = ceil((numBlocks*goldFrac/tapable))*4.99;

end

%calculates cost of blue tape

function [blueCost] = blue(numBlocks, blueFrac, tapable)

blueCost = ceil(numBlocks*blueFrac/tapable)*3.99;

end

%calculates cost of white tape

function [whiteCost] = white(numBlocks, whiteFrac, tapable)

whiteCost = ceil(numBlocks*whiteFrac/tapable)*2.99;
    
end