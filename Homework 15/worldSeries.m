function [winner, margin, bestHalfInning, bestFullInning, blanks] = worldSeries(scoreBoard, teamNames)

row1 = scoreBoard(1,:);

row2 = scoreBoard(2,:);

if(sum(row1) > sum(row2))
    
    winner = teamNames{1};
    
    margin = sum(row1) - sum(row2);
    
else
    
    winner = teamNames{2};
    
    margin = sum(row2) - sum(row1);
    
end

bestHalfInning = max(max(scoreBoard));

bestFullInning = max(sum(scoreBoard));

blanks = sum(sum(scoreBoard == 0));

end