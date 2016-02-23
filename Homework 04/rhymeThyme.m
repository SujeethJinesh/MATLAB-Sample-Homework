function rhyme = rhymeThyme(string)

[token, remainder] = strtok(string,'.'); %splits the string

numSpacesToken = length(token) - sum(token ~= ' '); %deletes space

numSpacesRemainder = length(remainder) - sum(remainder ~= ' ') - 1; 

last3Token = char(token(end-2:end)); %last 3 tokens

last3Remainder = char(remainder(end-3:end-1)); %last 3 remainders

rhyme = (numSpacesRemainder == numSpacesToken) & isequal(last3Token, last3Remainder); %checks for rhyme

end