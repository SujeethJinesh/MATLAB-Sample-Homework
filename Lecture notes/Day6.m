% day 6 - Vector indexing and Strings
vec1 = [86 87 90 99 100 88]
vec2 = [5 4 3 2 1]
vec3 = vec1(vec1 > 90)
myvec = vec1 > 90
class(myvec)
%logical operations: > < >= <= == ~= (not equal)
myvec2 = [1 0 1 0]
class(vec2)

%Strings: in Matlab a string is a string of characters stored internally as
%a vector of Ascii values
str = 'Georgia Tech'
firstLetter = str(1)
lastLetter = str(end)
firstThree = str(1:3)

newString = [firstLetter lastLetter firstThree]

str = [str '!']

word = 'short'
word = word + 1
word = char(word)

name = 'tom'
%name = char(name - 32)

name = char(name - 'a' + 'A')

name2 = 'anna'
name2 = char(name2 - 'a' + 'A')

%you can compare strings
co1 = strcmp('gatech', 'gatech')
com2 = strcmp('gatech','GATECH')
com3 = strcmpi('gatech', 'GATECH') %ignores the capitalization
com4 = ~strcmp('gatech', 'GATECH') %will evaluate to false, but tilda makes it true

word = 'kitten'
word2 = 'dog'
com5 = ~strcmp(word, word2)

word == word2
%above won't work because it is not the same size, cannot compare diff
%sized vectors