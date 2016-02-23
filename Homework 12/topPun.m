function topPun(name, score)

score = [0 score];

x = 0:length(score)-1;

y = cumsum(score);

plot(x,y, 'ro-');

title(sprintf('%s''s Total Score', name));

axis normal

xlabel('Day');

ylabel('Score');

end