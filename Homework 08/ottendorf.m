function secret = ottendorf(fileName, cipher1)

cipher = fopen(cipher1, 'r');

cipherLine = fgetl(cipher);

[fileNum, lineNum, wordNum, letterNum] = indexFetcher(cipherLine);

lineNum = str2num(lineNum);

wordNum = str2num(wordNum);

letterNum = str2num(letterNum);

str = [];

letter = [];

punctuation = [];

while ~isequal(fileNum, 0) & ~isequal(lineNum, 0) & ~isequal(wordNum, 0) & ~isequal(letterNum, 0)

    letter = letterFetcher(fileNum, lineNum, wordNum, letterNum, fileName); 
    
    cipherLine = fgetl(cipher);
    
    str = [str letter];
    
    while length(cipherLine) < 7
        
        if isempty(cipherLine)
            str = [str ' '];
        else                                    %Errro is somewhere in loop
            punctuation = cipherLine(1);
            
            str = [str punctuation];
        end
        
        cipherLine = fgetl(cipher);
        
    end
    
    punctuation = [];
    
    [fileNum, lineNum, wordNum, letterNum] = indexFetcher(cipherLine);
    
    lineNum = str2num(lineNum);

    wordNum = str2num(wordNum);

    letterNum = str2num(letterNum);
    
end

secret = strtrim(str);

fclose(cipher);

end

function[fileNum, lineNum, wordNum, letterNum] = indexFetcher(cipherLine)

[fileNum, remain] = strtok(cipherLine, '-');

[lineNum, remain] = strtok(remain, '-');

[wordNum, remain] = strtok(remain, '-');

letterNum = remain(2:end);

end

function letter = letterFetcher(fileNum, lineNum, wordNum, letterNum, fileName)

file = [fileName '_' fileNum '.txt'];

fh = fopen(file, 'r');

n = 1;

while n <= lineNum
    line = fgetl(fh);
    
    n = n + 1;
end

fclose(fh);

spaces = strfind(line, ' ');

if wordNum > 1
    index = spaces(wordNum-1)+ letterNum;
    
elseif wordNum == 1
    index = letterNum;
end

letter = line(index);

end