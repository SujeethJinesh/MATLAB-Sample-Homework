function [time col2 col3] = getData(fname)

    fh = fopen(fname, 'r');
    time = [];
    col2 = [];
    col3 = [];
    line = fgetl(fh);
    
    while ischar(line)
       % getting the time data
       first = str2num(line(3:11));
       sign = line(13);
       exp1 = str2num(line(16));
       
       switch sign
           case '+'
               exp1 = exp1 * 1;
           case '-'
               exp1 = exp1 * (-1);
       end
       first = first * (10^exp1);
       time = [time first];
       
       % getting col2 data
       second = str2num(line(19:27));
       col2 = [col2 second];
       % getting col3 data
       third = str2num(line(35:43));
       col3 = [col3 third];
       
       % get the next line of data
       line = fgetl(fh);
    end
    fclose(fh);
end
