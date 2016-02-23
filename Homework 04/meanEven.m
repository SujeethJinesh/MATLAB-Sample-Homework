function average = meanEven(randVec)

logical = mod(randVec(1:end),2) == 0; %finds the indexes of the vector containing even numbers

position = find(logical(1:end) == 1); %finds odd position

evens = zeros(1, length(position)); %creates a vector of zeros

evens(1:end) = randVec(position(1:end)); %plugs in even numbers into vector

average = sum(evens)./(length(position)); %averages the even numbers

end