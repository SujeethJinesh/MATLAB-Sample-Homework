function output = twinPrimes(vec)

vecPlus2 = vec + 2; %checks 2 above

vecMinus2 = vec - 2; %checks 2 below

primeCheck = isprime(vec); %checks if vector is prime

primeCheckPlus2 = double(isprime(vecPlus2)); %checks if plus is prime, puts results into vector

primeCheckMinus2 = double(isprime(vecMinus2)); %checks if minus 2 is prime, puts results into vector

output = (primeCheck == primeCheckPlus2 & primeCheck == 1) | primeCheck == primeCheckMinus2 & primeCheck == 1;

end