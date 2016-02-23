function output = detention(name, sentence)

f1 = fopen(name, 'r'); %opens the file

line = fgetl(f1); %gets the first line of the file

output = 'Good job. You are free to go!'; %creates a default output;

while ischar(line) %goes until the last line is -1
    
    if ~(strcmp(line, sentence))
       output = 'Not so fast. Start all over!'; %if the strings aren't the same then change the output
    end
    
    line = fgetl(f1);
end

fclose(f1);

end