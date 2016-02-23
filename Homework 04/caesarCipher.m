function codedString = caesarCipher(str, shift)

shift = mod(shift, 26); %shifts the shift to within 26 numbers

str(str >= 97 & str <= 122 & isletter(str)) = str((str >= 97 & str < 122 & isletter(str)))+ shift; %shifts the string forward

str(str > 122) = str(str > 122) - 26; %brings back extraneous values

str1 = upperCase(str(str >= 'A' & str <= 'Z'), shift);

str(str >= 'A' & str <= 'Z' ) = str1; %brings back upper case letters

codedString = char(str); %puts output in a final string

end

function str = upperCase(str, shift) %brings all the upper case back

str = str + shift;

str(str > 90) = str(str > 90) - 26;

end