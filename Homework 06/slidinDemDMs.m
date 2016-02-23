function out = slidinDemDMs(in)

in = lower(in); %lower cases everything

numSmileys = sum(length(strfind(in, ':)'))) + sum(length(strfind(in, '(:'))); %sums up total numbers of each text

numWinkeys = sum(length(strfind(in, ';)'))) + sum(length(strfind(in, '(;')));

numHearts = sum(length(strfind(in, '<3')));

numExclamations = sum(length(strfind(in, '!')));

numBae = sum(length(strfind(in, 'bae')));

maskHeyy = strfind(in, 'heyy');

numHeyy = sum(length(maskHeyy));

numYs = numYs(maskHeyy, in);

total = numSmileys.*5 + numWinkeys.*10 + numHearts.*15 + numExclamations.*2 + numBae.*5 + numHeyy.*2 + numYs.*2;

out = decision(total);

end

function numYs = numYs(maskHeyy, in) %calculates the number of Ys in the heyys

heys = maskHeyy + 3;

in(1:heys-1) = [];

[Ys, ~] = strtok(in, ' .!,-');

numYs = length(Ys) -1;

end

function out = decision(total) %the last decision making process if the person likes you

if (total >= 0 && total <= 14)
    out = 'You are looking for love in all the wrong places.';
end
if (total >= 15 && total <= 29)
    out = 'Like a ball at the top of a hill, you have potential.' ;
end
if (total >= 30)
    out = 'Are you a bank? Because you have acquired interest!';
end
end