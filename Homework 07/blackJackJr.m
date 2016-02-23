function number = blackJackJr(num)

sum = 0; %initializes the sum and the number counter

n = 1;

while sum <= 21 %ensures the sum is less than 21
    
    sum = num(n) + sum;
    
    n = n+1;
end

number = n-2; %accounts for the extra

end