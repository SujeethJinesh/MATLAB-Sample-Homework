function outputInitials = gradeSorter(grades, firstInitials, lastInitials)

outputInitials = [firstInitials, firstInitials, firstInitials]; %creates a matrix of size 3*firstInitials

[what, where] = sort(grades, 'descend'); %sorts grades in descending order

outputInitials(1:3:end) = char(firstInitials(where)); %puts first initials in one's place

outputInitials(2:3:end) = char(lastInitials(where)); %puts last initials in two's place

outputInitials(3:3:end) = char(32); %puts spaces in three's place

outputInitials = strtrim(outputInitials); %trims white space

end