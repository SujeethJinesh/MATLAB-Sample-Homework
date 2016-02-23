function cipher = caesarSalad(string, shift)

str1 = mod(shift,26); %mods the shift to 0 < x < 26

str2 = str1 + string; %adds the numerical/ASCII values of the string and the string together

mask = str2 > 'z'; %creates a vector of all values greater than 'z'

str2(mask) = str2(mask) - 26; %truncates the values to the lower case alphabet range

cipher = char(str2); %equates the final output with above vector.

end