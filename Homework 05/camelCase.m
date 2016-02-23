function output = camelCase (string)

%find all the first letters indexes, spaces + 1

maskSpace = find(string == ' '); %finds index values of spaces

temp1 = lower(string); %makes everything lower case

temp1(1) = upper(temp1(1)); %makes first index value upper case

temp1(maskSpace + 1) = upper(string(maskSpace + 1)); % takes the first letter of the words and makes them upper case

temp1 = spaceRemove(temp1); % removes spaces

temp1 = vowelRemove(temp1); %removes lower case vowels

temp1(1) = lower(temp1(1)); %lower-cases the first value of the string

output = temp1; %assigns final output value
end

function [newString] = spaceRemove (string) %function to remove all the spaces

mask = find(string == ' ');

string(mask) = [];

newString = string;

end

function [newString] = vowelRemove(string) %function to remove all lower case vowels

maskVowel = find(string == 'a' | string == 'e' | string == 'i' | string == 'o' | string == 'u');

string(maskVowel) = [];

newString = string;

end