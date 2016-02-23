function person = australianSecretAgent(string)

conversation = fopen(string, 'r');

line = fgets(conversation);

name1 = strtok(line,':');

line = fgets(conversation);

name2 = strtok(line,':');

fclose(conversation);

nameTemp = conversationCutter(name1, string);

name1Australian = isAustralian(nameTemp);

person = [];

if name1Australian == true
    person = name1;
else
    person = name2;
end

end

function logic = isAustralian(string)

conversation = fopen(string, 'r');

line = lower(fgets(conversation));

counter = 0;

logic = false;

while ischar(line)
    
    prawn = strfind(line, 'prawn');
    
    barbie = strfind(line, 'barbie');
    
    ripper = strfind(line, 'ripper');
    
    vec = [prawn barbie ripper];
    
    condition = length(vec);
    
    if condition > 0
        
        counter = counter + condition
        
    end
    
    line = lower(fgets(conversation));
    
end

if counter >= 4
    
    logic = true;
    
end

fclose(conversation);

end

function name = conversationCutter(name, string)

conversation = fopen(string, 'r');

line = fgetl(conversation);

if strcmp(strtok(line,':'),name)

    name = [name '_Conversation.txt'];
    
    name1Conversation = fopen(name, 'w');
    
    while ischar(line)
    
        fprintf(name1Conversation, line);
    
        line = lower(fgetl(conversation));
    
        line = lower(fgetl(conversation));
    end

else
    line = lower(fgetl(conversation));
end

fclose(conversation);

end