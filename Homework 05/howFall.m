function [logic, hanging] = howFall (leaves, days)

green = sum(sum(leaves >= (15 + days))); %number of green leaves after days

yellow = sum(sum(leaves >= (10 + days) & leaves <= (14 + days))); %number of yellow leaves after days

orange = sum(sum(leaves >= (4 + days) & leaves <= (9 + days))); %number of orange leaves after days

brown = sum(sum(leaves >= (1 + days) & leaves <= (3 + days))); %number of brown leaves after days

total = green + yellow + orange + brown;

[row, col] = size(leaves);

logic = (total <= 0.2.*(row.*col));

hanging = sprintf('There will be %d leaves remaining: %d green, %d yellow, %d orange, and %d brown.', total, green, yellow, orange, brown);

end