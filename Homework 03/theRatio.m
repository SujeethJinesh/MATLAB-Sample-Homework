function largestGrowth = theRatio(femaleStuds, totalStuds, year)

ratio = femaleStuds./totalStuds; %gets ratio of the female vs total students

ratioDiff = ratio(2:end) - ratio(1:end-1); %this finds the difference in the ratios

[MAX, place] = max(ratioDiff); %finds the max change in difference

largestGrowth = [year(place), year(place + 1)]; %outputs the final two year answer

end