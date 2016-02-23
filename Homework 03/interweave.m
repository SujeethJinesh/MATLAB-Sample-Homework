function mixed = interweave(vec1, vec2)

lengthVector = [length(vec1), length(vec2)]; %gets the lengths of the two vectors

maxVec = max(lengthVector); %finds the max length of the two vectors

mixed = zeros(1, 2.*maxVec); %creates a vector of zeros

mixed(1:2:2.*length(vec1)) = vec1; %adds values into the matrix mixed

mixed(2:2:2.*length(vec2)) = vec2; %adds values into the matrix mixed

end