function changed = passwordProtector(str)

changed = str;

output = false;

while ~output

    changed = encoder(changed);
    
    changed = caesarCipher(changed, 1);
    
    temp = sum(double(changed))./length(changed);

    if temp >= 160
        output = true;
    end
    
end

end

function output = encoder(str) %run file

output = spaceDeleter(str);

output = replaceA(output);

output = replaceO(output);

output = eReplace(output);

output = zReplace(output);

output = bReplace(output);

output = replaceF(output);

end

function output = spaceDeleter(str) %deletes spaces

mask = str == ' ';

str(mask) = [];

output = str;

end

function output = replaceA(str) %replaces As

mask = str == 'A';

str(mask) = 192;

output = char(str);

end

function output = replaceO(str) %replaces Os

mask = str == 'O';

str(mask) = 212;

output = char(str);

end

function output = eReplace(str) %replaces es

mask = str == 'e';

str(mask) = 235;

output = char(str);

end

function output = zReplace(str) %replaces zs

mask = str == 'z';

str(mask) = 191;

output = char(str);

end

function output = bReplace(str) %replaces bs

pos = strfind(str, 'b');

output = [];

pos = [0 pos];
    
temp1 = [];

for n = 1:length(pos)-1
    if n < length(pos)
        temp1 = str(pos(n)+1:pos(n+1));   
    end
output = char([output temp1 223]);
end

temp = str(pos(end)+1:end);

output = char([output temp]);

end

function output = replaceF(str) %replaces Fs

pos = strfind(str, 'F') - 1;

output = [];

pos = [0 pos];
    
temp1 = [];

for n = 1:length(pos)-1
    if n < length(pos)
        temp1 = str(pos(n)+1:pos(n+1));   
    end
output = char([output temp1 176]);
end

temp = str(pos(end)+1:end);

output = char([output temp]);

end

function codedString = caesarCipher(str, shift) %caesar cipher shifts by the given index

shift = mod(shift, 26); %shifts the shift to within 26 numbers

str(str >= 97 & str <= 122 & isletter(str)) = str((str >= 97 & str < 122 & isletter(str)))+ shift; %shifts the string forward

str1 = upperCase(str(str >= 'A' & str <= 'Z'), shift);

str(str >= 'A' & str <= 'Z' ) = str1; %brings back upper case letters

codedString = char(str); %puts output in a final string

end

function str = upperCase(str, shift) %brings all the upper case back

str = str + shift;

str(str > 90) = str(str > 90) - 26;

end