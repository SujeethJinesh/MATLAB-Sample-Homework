
%function to calculate side of a right triangle using Pythagorean Theorem

function [sideB] = backCalculate(sideA, hypotenuse);

sideB = sqrt(hypotenuse^2 - sideA^2);

end