function output = camelCase1 (string)

%find all the first letters indexes, spaces + 1

maskSpace = find(string == ' ');

temp1 = string;

temp1 = upper(string(maskSpace + 1));

temp = spaceRemove(string);

temp = lower(temp);

numVowels = sum(string == 'a' | string == 'e' | string == 'i' | string == 'o' | string == 'u');

temp = vowelRemove(temp);

maskUpper = maskSpace - numVowels;

%temp(maskUpper) = temp1(2:end);

output = temp;

%track the changes made when taking out an index



end

function [newString] = spaceRemove (string)

mask = find(string == ' ');

string(mask) = [];

newString = string;

end

function [newString] = vowelRemove(string)

maskVowel = find(string == 'a' | string == 'e' | string == 'i' | string == 'o' | string == 'u');

string(maskVowel) = [];

newString = string;

end