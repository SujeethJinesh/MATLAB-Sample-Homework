function password = bondHackBond(filename)


password = '';

for i = 1:6
fh = fopen(filename,'r');    
line1 = fgetl(fh);
line2 = fgetl(fh);
line3 = fgetl(fh);
while length(password) ~= i
    
    if line1(i)==line2(i) & line1(i)==line3(i) & line1(i)==line3(i)
        password = [password,line1(i)];
    end

    line1 = line2;
    
    line2 = line3;
    
    line3 = fgetl(fh);
    
end
fclose(fh);
end

end