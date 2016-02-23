function text = jackBlack(movies, ratings,excelnames)

[numbers names rawData] = xlsread('MovieData.xlsx');

title = rawData(:,1);

arr = [];

for i = 1:length(movies)

    tempVar = (sum(ratings{i}))./length(ratings{i});

    arr = [arr tempVar]; 

end

maximum = [];

for i = 1:length(movies) 

    [tempVar, place] = max(arr); 

    maximum = [maximum place]; 

    arr(place) = -100;

end

    highestRated = strcmp(title,movies(maximum(1)))';

    highestRated = find(highestRated,1);
    
    maximum(1) = [];


secondMovie = movies{maximum(1)};

firstTime = rawData{highestRated,2};

firstTime = fetchTime(firstTime);

firstLength = (rawData{highestRated,7})./60;

firstMovieTime = firstTime + firstLength;

indexSecond = strcmp(title,movies(maximum(1)))';

indexSecond = find(indexSecond,1);

indexThird = strcmp(title,movies(maximum(2)))';

indexThird = find(indexThird,2);

beforeSecondTime = fetchTime(rawData{indexSecond,2}); %These "2"'s will change

beforeThirdTime = fetchTime(rawData{indexThird,2});

    i =1;    
    time2 = 2;   
    while i<6

        if beforeSecondTime < firstMovieTime

            time2 = time2 +1;

            beforeSecondTime = fetchTime(rawData{indexSecond,time2});

        end

        i = i+1;

    end

    

    

     j =1;    

    showTime3 = 2;   

    while j<6

        if beforeThirdTime < firstMovieTime

            showTime3 = showTime3 +1;

            beforeThirdTime = fetchTime(rawData{indexThird,showTime3});

        end

        j = j+1;

    end
    
    beforeSecondTime = fetchTime(rawData{indexSecond,time2});

    beforeThirdTime = fetchTime(rawData{indexThird,showTime3});

    varCase1 = rawData{indexThird,showTime3};

    varCase2 = rawData{indexSecond,time2};

    if (beforeThirdTime - firstMovieTime) < (beforeSecondTime - firstMovieTime)

       secondMovie = movies{maximum(2)};

       text = sprintf('We''re going to see %s at %s. See you then :)',secondMovie,varCase1);

    else

        text = sprintf('We''re going to see %s at %s. See you then :)',secondMovie,varCase2);

    end
end

function doubleTime = fetchTime(time)

[numbers rest] = strtok(time, ':');

rest = rest(2:end);

rest = str2num(rest);

rest = rest./60;

numbers = str2num(numbers);

doubleTime = numbers + rest;

end