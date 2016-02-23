function [out, sum1] = wishingWell(arr)

three = arr > 3;

zero = arr == 0;

arr(three) = round(2*(arr(three)),2);

arr(zero) = round(arr(zero) - 2,2);

out = round(arr,2);

sum1 = sum(sum(out));

end