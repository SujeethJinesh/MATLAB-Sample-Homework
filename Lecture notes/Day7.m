phrase = 'I love CS1371!!!'
newphrase = phrase(phrase ~= ' ') %removes ' ' from the string
%{
== ~= < > >= <=
& (and) | (or) ~ (not)
%}

newphrase2 = phrase(phrase ~= ' ' & phrase ~= '!') % removes ' ' and '!'

newphrase3 = phrase(~(phrase == ' ' & phrase == '!'))

newphrase4 = phrase(~(phrase < '9' & phrase >= '0'))

newphrase5 = phrase
newphrase5(newphrase5 <= '9' & phrase >= '0') = []

%diff - gives you the difference between the elements in the vectors

vec = [1,2,3,4,5]

newvec = diff(vec) %returns [1,1,1,1,1]

studyhours = [6 7 2 5 7 9 10]
testgrades = [70 75 76 81 89 90 92]
improvements = diff(testgrades)
[maximprovement, maxplace] = max(improvements)
myhours = studyhours(maxplace)

%num2str converts a number to a string - only works with digits

mystring = num2str(123.5)

%sprintf - prints out a string nicely formatted
sprintf('A word is %s and a number is %d and a floating pt is %f', 'hello', 45, 12.4)

mystring = 'Yellow Jackets'

places = find(mystring == 'e') %places will return [2,12]
places2 = mystring == 'e'
class(places2)

%how many e's are in mystring
howmany = length(places)
howmany2 = sum(places2) %returns number of e's
%howmany3 = sum(places) %would return the sum of the indices

%practice problem - build a new vector starting with a base of zeros or
%ones

%produce c-a-r-s from cars

