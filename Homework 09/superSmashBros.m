function [string, cellarray] = superSmashBros(characters, scores)

[numbers, txt, raw] = xlsread(scores);

player = txt(1,2:end);

Transposed = transpose(numbers);

[scoresMax, maxPlayersPossible] = max(Transposed);

winners = player(maxPlayersPossible);

newWinners = ['Winner' winners];

newWinners = transpose(newWinners);

cellarray = [raw newWinners];

finalwinner = player{mode(maxPlayersPossible)};

[numc,textc,rawc] = xlsread(characters);
rawc(:,1) = [];
rawc(1,:) = [];
[rows,cols] = size(rawc);
for i = 1:rows
    for j = 1:cols
        charname = rawc{i,j};
        switch charname
            case {'Link', 'Samus', 'Luigi'}
                numbers(i,j) = numbers(i,j) + 8;
            case {'DK', 'Yoshi', 'Mario'}
                numbers(i,j) = numbers(i,j) + 4;
            case {'Jigglypuff', 'C. Falcon', 'Fox'}
                numbers(i,j) = numbers(i,j) + 2;
            case {'Ness', 'Kirby', 'Pikachu'}
                numbers(i,j) = numbers(i,j) + 0;
        end
    end
end
sumscores = sum(numbers);
[~,maxplayerindex] = max(sumscores);
bestplayer = player{maxplayerindex};

if strcmp(bestplayer, finalwinner)
    string = sprintf('%s won the most games and is the best player!', finalwinner)
else
string = sprintf('%s won the most games, but %s is the best player!', finalwinner, bestplayer);
end

end