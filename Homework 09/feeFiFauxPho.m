function [logical, update] = feeFiFauxPho(txtfilename,excelfilename)

update = 1;

[~, ~, raw] = xlsread(excelfilename);

columTitles = raw(1,1:end);

ID = fopen(txtfilename);

line = fgetl(ID);

lineCount = 0;

while ischar(line)

    line = fgetl(ID);

    lineCount = lineCount +1;

end

fclose(ID);

ID = fopen(txtfilename);

line = fgetl(ID);

newArr = {'Amount' 'Unit' 'Ingredient'};

for i = 1:lineCount-1

    line = fgetl(ID);

    [first, rest] = strtok(line, ' ');

    first = str2num(first);

    [second, third] = strtok(rest, ' ');

    third = third(2:end);

    newArr = [newArr; {first} {second} {third}];

end


neededIngredients = newArr(2:end,3)';

neededAmount = newArr(2:end,1)';

total = 0;

for i=1:length(neededIngredients)

   

    var = strcmp(raw, neededIngredients{i});

    total = total + sum(sum(var));    

end

if total == length(neededIngredients)

    logical = true;

else

    logical = false;

end

colAmount = strcmp(columTitles,'Amount'); 

colAmount = find(colAmount,1);

units = strcmp(columTitles,'Unit'); 

units = find(units,1);

colIngreds = strcmp(columTitles, 'Ingredient'); 

colIngreds = find(colIngreds, 1); 

for i =1:length(neededIngredients)

     if logical == true  

        neededIngredientsStuff = strcmp(raw,neededIngredients{i});

        [x, ~] = find(neededIngredientsStuff, 1);

        amountRemaining = raw{x,colAmount} - neededAmount{i};

        if amountRemaining < 0 

            logical = false;

        end

        raw{x, colAmount} = amountRemaining;

     end

end

fclose(ID);




update = [{raw{:,colAmount}}' {raw{:,units}}' {raw{:,colIngreds}}'];

end