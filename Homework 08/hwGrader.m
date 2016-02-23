function output = hwGrader(correct, students)

key = fopen(correct, 'r');

stud = fopen(students, 'r');

keyLine = fgetl(key);

studLine = fgetl(stud);

wrongCount = 0;

numLines = 0;

if strcmp(studLine, keyLine)

    while ischar(keyLine)
   
        if ~strcmp(studLine, keyLine)
    
            wrongCount = wrongCount + 1;
        
        end
        numLines = numLines + 1;
    
        keyLine = fgetl(key);

        studLine = fgetl(stud);
    end
    numLines = numLines - 1;
    output = round((numLines-wrongCount)/numLines,3)*100;    
else
    
    output = 0;

end

fclose(key);

fclose(stud);

end