function numStolen = countCelery(cell, totalCrops)

[row, col] = size(cell);

count = 0;

for n = 1:col
    if strcmp(cell{n}, 'celery') & ~iscell(cell{n})
       
        count = count + 1;
        
    end
end

numStolen = totalCrops - count;

end