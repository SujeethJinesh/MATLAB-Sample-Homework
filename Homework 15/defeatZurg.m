function outcome = defeatZurg(input, lasers)

A = imread(input);
image(A);
hold on

[row, col, ~] = size(A);

headshotRange = [1,row./3; col./3,(2./3).*col]

health = 100;

for n = 1:length(lasers)
    
    if lasers(2, n) >= headshotRange(1,1) & lasers(2, n) <= headshotRange(1,end) & lasers(1, n) >= headshotRange(2,1) & lasers(1, n) <= headshotRange(2,end)
        
        health = health - 30;
        
    else
        health = health - 10;
    end
    
    plot(lasers(1,n), lasers(2,n), 'or')
    hold on
    
end

if health <= 0
    
    outcome = 'YOU DEFEATED ZURG!';
    
else
    
    outcome = 'GAME OVER!';
    
end

end