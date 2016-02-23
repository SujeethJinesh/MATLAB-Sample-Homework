vec = [ 4 5 6 7 8 9]

vec > 5 %logical vector

vec(vec > 5) %vector containing values that are > 5

find(vec > 5) %vector containing positions of those values

arr = [1 2 3; 4 5 6]
find(arr < 3) %gives you unexpected results sometimes
arr(arr < 3)

[row, col] = find(arr < 3)

ages = [18 19 20 21 22 23 24 25]
gpa = [3.1 4.1 2.9 3.3 4.0 4.1 4.0 3.2]

%age of person with highest gpa

[temp1, pos1] = max(gpa)
maxGpaAge = ages(pos)
[temp2, pos2] = sort(gpa, 'descend')

maxGpaAge = ages(gpa == temp1)

%average gpa of students below 21

avg = mean(gpa(ages < 21))

%when you apply a condition to a vector or array

%masking - when you apply a condition to a vector or array the logical
%vector is sometimes called a mask

grades = [86 90 99 98 99 80 83 82 81 80]
maskforA = grades >= 90
maskforB = grades < 90 & grades >= 80
GPA = mean(4.0 .* maskforA + 3.0 .* maskforB)
