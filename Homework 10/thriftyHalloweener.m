function [finalCell, totalCost] = thriftyHalloweener(data, characterName)

filename = [camelCase(characterName) '.xls'];

[num, text, raw] = xlsread(filename);

col1 = {}; col2 = {}; col3 = {};

for x = 1:length(text)

    col1(x) = text(x);
    
    col2(x) = {inf};
    
    col3(x) = text(x);
    
end

for n = 1:length(data) %loops through the stores
    
    for x = 1:length(text) % loops through all the text
       
        for m = 1:length(data(n).Inventory) %loops through the inventory
            
            if strcmp(data(n).Inventory(m).Item, text{x}) 
                
                mask = find(zeroAdder(strfind(col1, data(n).Inventory(m).Item)), 1);
                
                if data(n).Inventory(m).Price < cell2mat(col2(mask))
                    
                    col2(mask) = num2cell(data(n).Inventory(m).Price);
                        
                    col3(mask) = cellstr(data(n).Name);
                    
                end
            end
            
            end
        end
end

col1 = transpose(col1);

col2 = transpose(col2);

col3 = transpose(col3);

row1 = {'Item' 'Store' 'Price'};

totalCost = 0;

for w = 1:length(col3)
    
    totalCost = totalCost + col2{w};
    
end

finalCell = cell(length(col3) + 1,3);

finalCell(1,1:end) = row1;

finalCell(2:end,1) = col1;

finalCell(2:end,2) = col3;

finalCell(2:end,3) = col2;

end


function output = camelCase (string)

%find all the first letters indexes, spaces + 1

maskSpace = find(string == ' '); %finds index values of spaces

temp1 = lower(string); %makes everything lower case

temp1(1) = upper(temp1(1)); %makes first index value upper case

temp1(maskSpace + 1) = upper(string(maskSpace + 1)); % takes the first letter of the words and makes them upper case

temp1 = spaceRemove(temp1); % removes spaces

temp1(1) = lower(temp1(1)); %lower-cases the first value of the string

output = temp1; %assigns final output value
end

function [newString] = spaceRemove (string) %function to remove all the spaces

mask = find(string == ' ');

string(mask) = [];

newString = string;

end

function [arr] = zeroAdder(input)

arr = [];

for n = 1:length(input)
    
    if isempty(input{n})
        
        arr(n) = false;
        
    else
        
        arr(n) = true;
        
    end
    
end
end