function out = battleRoyal(names, strengths, face)

strengths = faceManipulation(strengths, face); %gets the new strengths value.

[diff, pos] = difference(strengths); %gets difference

[name1, name3] = sortedNames(names, pos); %got names of top and bottom person

switch diff %compares the differences 
    case 0
        out = sprintf('The underdog %s wins!', name3);
    case{1,2}
        out = sprintf('%s just barely takes the victory!', name1);
    case {3,4}
        out = sprintf('The champion is %s!', name1);
    otherwise
        out = sprintf('%s wins by a landslide!', name1);
end

if(length(strfind(names,'John Cena')) == 1) %outputs john cena if he is in there
    out = sprintf('John Cena wins by absolute domination!!!');
end

end

function newStrengths = faceManipulation(strengths, face) %gets the new strength values

if sum(face == 1) == 1
    [~, pos] = find(face == 1);
    strengths(pos) = strengths(pos) - 3;

end

if sum(face == 1) == 2
    [~, pos1] = find(face == 0);
    strengths(pos1) = strengths(pos1) - 3;
end

newStrengths = strengths;

end

function [diff, pos] = difference(strengths) %gets the differences between the top two players

[temp,pos] = sort(strengths, 'descend');
    
diff = temp(1) - temp(2);

end

function [finalName1, finalName3] = sortedNames(names, pos) %sorts the names based off of sorting

[name1, name2, name3] = getNames(names);

if pos(1) == 1
        finalName1 = name1;
elseif pos(1) == 2
        finalName1 = name2;
elseif pos(1) == 3
        finalName1 = name3;
end

if pos(3) == 1
        finalName3 = name1;
elseif pos(3) == 2
        finalName3 = name2;
elseif pos(3) == 3
        finalName3 = name3;
end

end

function [name1, name2, name3] = getNames(names) %gets the names of the wrestlers

[name1, temp] = strtok(names, ',');

[name2, name3] = strtok(temp, ',');

name3(1) = [];

end

