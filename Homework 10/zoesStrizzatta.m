function updated = zoesStrizzatta(struct, substitutes)

updated = struct;

for n = 1:length(updated)

    for x = 1:length(substitutes(:,1))
        
        temp = substitutes{x, 1};
        
        if strcmp(updated(n).Ingredients, temp)
        
            updated(n).Ingredients = substitutes{x,2};
        
            updated(n).Costs = substitutes{x,3};
        end
    end
    
end

end