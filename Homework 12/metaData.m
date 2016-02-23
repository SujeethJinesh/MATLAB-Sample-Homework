function metaData(str)
[num txt raw] = xlsread(str);

[row col] = size(num); 

numPlots = col - 1;

num = ceil(numPlots./2);

for n = 1:numPlots 
   subplot(2,num,n);
   plot(num(:,1), num(:,n+1), 'k.-'); 
   hold on
   xlabel(txt{1});
   ylabel(txt{n+1}); 
end

end
