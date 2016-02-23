%make vectors manually
vec1 = [1 2 3 4 5]
%make vectors using range
vec2 = 1:8 % creates numbers from 1 to 8
vec3 = 1:2:8 % creates vector of numbers from 1 to 8 by step 2
%vec4 = 1:-1:8  impossible because negative step
%types of functions: zeros, ones, rand, linspace
vec5 = ones(1,5) %row with 5 columns of ones
vec6 = zeros(2,5) % 2 rows, with 5 columns of zeros
vec7 = ones (1,6) + ones(1,6)
vec8 = rand(1,9) % random numbers between 0 and 1
vec9 = linspace(1,5,20) % the first two numbers indicate range the last
%numbers is how many you want

%how to tell how big a vector is

result = length(vec1)
[rows, cols] = size(vec1)