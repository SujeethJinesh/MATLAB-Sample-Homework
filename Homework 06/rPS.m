function str = rPS(p1, p2)

[p1Name, p1Move] = strtok(p1, '-'); %separates the players and the moves

p1Move(1) = [];

[p2Name, p2Move] = strtok(p2, '-');

p2Move(1) = [];

if strcmp(p1Move, 'Sapphire') | strcmp(p1Move, 'Ruby') | strcmp(p1Move,'Quartz') | strcmp(p1Move, 'Limestone') | strcmp(p1Move, 'Diamond') %converts values to rock, scissors, paper etc
    p1NewMove = 'r';
end
if strcmp(p1Move, 'Safety') | strcmp(p1Move, 'Edge') | strcmp(p1Move, 'Hair') | strcmp(p1Move, 'Craft')
    p1NewMove = 's';
end
if strcmp(p1Move, 'Cardstock') | strcmp(p1Move, 'Origami') | strcmp(p1Move, 'Wrapping') | strcmp(p1Move, 'Graphing')
    p1NewMove = 'p';
end


if strcmp(p2Move, 'Sapphire') | strcmp(p2Move, 'Ruby') | strcmp(p2Move,'Quartz') | strcmp(p2Move, 'Limestone') | strcmp(p2Move, 'Diamond')
    p2NewMove = 'r';
end
if strcmp(p2Move, 'Safety') | strcmp(p2Move, 'Edge') | strcmp(p2Move, 'Hair') | strcmp(p2Move, 'Craft')
    p2NewMove = 's';
end
if strcmp(p2Move, 'Cardstock') | strcmp(p2Move, 'Origami') | strcmp(p2Move, 'Wrapping') | strcmp(p2Move, 'Graphing')
    p2NewMove = 'p';
end

if strcmp(p1NewMove, p2NewMove)
    str = 'Tie; try again.';
end

if (strcmp(p1NewMove, 'r')) %decides who the winners are
    switch p2NewMove
        case 'p'
            str = sprintf('%s beats %s. %s wins.',p2Move, p1Move, p2Name);
        case 's'
            str = sprintf('%s beats %s. %s wins.',p1Move, p2Move, p1Name);
    end
end
if (strcmp(p1NewMove, 's'))
    switch p2NewMove
        case 'r'
            str = sprintf('%s beats %s. %s wins.',p2Move, p1Move, p2Name);
        case 'p'
            str = sprintf('%s beats %s. %s wins.',p1Move, p2Move, p1Name);
    end
end

if (strcmp(p1NewMove, 'p'))
    switch p2NewMove
        case 's'
            str = sprintf('%s beats %s. %s wins.',p2Move, p1Move, p2Name);
        case 'r'
            str = sprintf('%s beats %s. %s wins.',p1Move, p2Move, p1Name);
    end
end

end