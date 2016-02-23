function val = fastExponentiation %some error, fix later

base = 2;

power = 1000;

n = 2;

num = base^2;

while n <= power
    
    num = num^2;
    
    n = 2*n;
    
end

div = mod(n, power);

val = num/(base^div);

end