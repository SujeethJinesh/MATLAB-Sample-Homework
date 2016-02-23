function output = arrReplace (arr1, arr2, num)

mask = arr1 == num; %creates a mask of the positions of arr1 equal to num

arr1(mask) = arr2(mask); %replaces the values in arr1 with arr2 values at mask value

output = arr1; %assigns final output

end