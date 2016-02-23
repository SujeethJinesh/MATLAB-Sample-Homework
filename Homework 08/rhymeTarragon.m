function output = rhymeTarragon(string)

poem = fopen(string, 'r');

line = fgets(poem);

lineNums = 0;

while ischar(line)
    
   line = fgets(poem);
   
   lineNums = lineNums + 1;
   
end

fclose(poem);

poem = fopen(string, 'r');

line = fgets(poem);

ans = [];

if mod(lineNums, 4) == 0
   if isAlternating(poem)
       
   elseif isEnclosed(poem)
    
   elseif isGhazal(poem)
       
   elseif isRubai(poem)
       
       else
        output = 'The file does not contain a poem.'
   end
elseif mod(lineNums, 5) == 0
   
    if isLimerick(poem)
    
        else
        output = 'The file does not contain a poem.'
    end
elseif mod(lineNums, 14) == 0
    if isPetrarchan(poem)
        
    elseif isShakespearean(poem)
        
    else
        output = 'The file does not contain a poem.'
    end
else
     output = 'The file does not contain a poem.'
end

end

function output = isAlternating(string)

end

function output = isEnclosed(string)

end

function output = isGhazal(string)

end

function output = isLimerick(string)

end

function output = isRubai(string)

end

function output = isPetrarchan(string)

end

function output = isShakespearean(string)

end

function rhyme = rhymeThyme(string)

[token, remainder] = strtok(string,'.'); %splits the string

numSpacesToken = length(token) - sum(token ~= ' '); %deletes space

numSpacesRemainder = length(remainder) - sum(remainder ~= ' ') - 1; 

last3Token = char(token(end-2:end)); %last 3 tokens

last3Remainder = char(remainder(end-3:end-1)); %last 3 remainders

rhyme = (numSpacesRemainder == numSpacesToken) & isequal(last3Token, last3Remainder); %checks for rhyme

end
