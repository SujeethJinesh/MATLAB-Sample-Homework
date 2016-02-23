function name = rollerCoaster(filename, category, searchFor)

[num, text, raw] = xlsread(filename);

searchFor = lower(searchFor);

for n = 2:length(text(1, 1:end))
    if strcmp(category, text{1, n})
        switch searchFor
            case 'most'
                
                [maximum, pos] = max(num(:, n-1));
                
                if sum(num(:, n-1) == maximum) >= 2
                    
                    name = 'Just pick one!';
                else
                    name = sprintf('%s',text{pos+1, 1});
                end
            case 'least'
                
                [minimum, pos] = min(num(:, n-1));
                
                if sum(num(:, n-1) == minimum) >= 2
                    
                    name = 'Just pick one!';
                else
                    name = sprintf('%s',text{pos+1, 1});
                end
                
            otherwise
                name = 'Just pick one!';
        end
        
    end
end

end