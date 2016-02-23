function total = krustyKrab(input)

check = fopen(input, 'r');

[impo, ~] = strtok(input, '.');

checkName = [impo '_receipt.txt'];

receipt = fopen(checkName, 'w');

line = fgets(check);

sum = 0;

while ischar(line) %goes until the last line is -1
    
    fprintf(receipt, line);
    
    line = fgets(check);
    
    if ischar(line)
    
        [~,price] = strtok(line, '$');
    
        price(1) = [];
    
        sum = round(str2num(price) + sum,2);
    
    end
end

fprintf(receipt, '\nSubtotal=$%0.2f\n', sum);

total = round(sum*1.15,2);

fprintf(receipt, 'Total=$%0.2f\n', total);

fprintf(receipt, 'The Krusty Krab, Come spend your money here!');

fclose(check);

end