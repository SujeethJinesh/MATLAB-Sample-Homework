function [cakeNum] = letThemEatCake(totalCake, numPeople)

cakeNum = mod(totalCake, numPeople) + floor(totalCake./numPeople); %used mod to
%calculate leftover cake, and floor to find number of cake per person

end