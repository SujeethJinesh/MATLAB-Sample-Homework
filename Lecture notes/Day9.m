arr1 = [1 2 3; 4 5 6]

arr2 = [linspace(1, 10, 3); linspace(1, 5, 3); linspace(1, 100, 3); linspace(1, 50,3)]

values = [1 4 6]
values = [values; values]
values = [values; values]
values = [values; values]

arr3 = ones(4,5) .* 69

arr3(1,:) = 6
 
arr3(arr3<10) = arr3(arr3<10) + 1
arr4 = ones(4,5) .* 69
arr4(1:end/2, 1:end/2) %will round down to the nearest integer

mysquare = eye(4)
mysquare2 = magic(5)%using functions with arrays - sum

mysum = sum(mysquare2)%this gives a vector containing the sum of each column

totalsum = sum(mysum)


%challenge: double all the elements in arr6 that are odd 

arr6 = magic(6)

arr6(mod(arr6,2) == 1) = 2 .* arr6(mod(arr6, 2) == 1)

arr7 = magic(4)
%arr7((end/2):end, (end - end/2):end) = 3 .* arr7((end/2):end, (end - end/2):end)
arr7(1:end/2, end/2 + 1:end) = arr7(1:end/2,end/2+1:end) .* 3

car = imread('GrayVolta.jpg');
figure;
%imshow(car);

figure
car = car(1:end, 1:end/2);
%imshow(car);

figure;
car(1:end, 1:end) = car(end:1, end:1);
imshow(car);