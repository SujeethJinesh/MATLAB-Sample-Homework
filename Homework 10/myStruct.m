function output = myStruct(cell)

y = 1;

for n = 1:length(cell)
    
    if mod(n,2) == 1
        
        for m = 1:length(cell{2})
            
            output(m).(cell{n}) = cell{n+1}{y};
            
            if length(cell{n + 1}) == length(cell{2})
                
                y = y + 1;
                
            end
            
        end
        y = 1;
    end
    
end

end