function [name, numMasks] = jinkies(struct)

numMasks = 0;

[name, numMasks] = jinkiesWrapper(struct, numMasks);

end

function [name, numMasks] = jinkiesWrapper(struct, numMasks)

lastIndex = length(fieldnames(struct));

names = fieldnames(struct);

firstFieldName = names{1};

lastFieldName = names{lastIndex};

if isempty(struct.(lastFieldName))
    
    name = struct.(firstFieldName);
    
    numMasks = numMasks;
    
else
    
    numMasks = numMasks + 1;
    
    [name, numMasks] = jinkiesWrapper(struct.(lastFieldName), numMasks);
    
end


end