vec = []

vec1 = rand(1,5)
vec1 = vec1.*10
vec1 = floor(vec1)
dieRolls = floor(6.*rand(1,5)+1)

dieRolls = floor(11.*rand(1,5)+2)

vec6 = [11 4 3 2 8 9]
mysum = sum(vec6)
[mymin, minplace] = min(vec6)
[mymax, maxplace] = max(vec6)

testgrades = [99 98 94 100 91 86] 

[mymin, minplace] = min(testgrades) %finds the first occurrence of lowest number

testgrades(minplace) = [] %creates empty space/removes the value

ages = [15 16 17 18 19 20 20 22 22 23 30]

% ages(1) = []
% ages(1) = []
% ages(1) = []

ages(1:3) = []
ages = ages(1:end-1)