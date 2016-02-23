function sorted = driveTime(str)

data = xlsread(str);

data = sortrows(data);

inFrame = data(:,1);

vehicID = data(:,2);

vehicSorted = sort(unique(vehicID));

sorted = [];

for n = 1:length(vehicSorted)
    
    time = vehicID == vehicSorted(n);
    
    time = inFrame(time);
    
    if length(time) == 1
        m = 0;
    else 
        m = time(end) - time(1);
    end

    vec = [vehicSorted(n), round(m,1)];
    
    sorted = [sorted; vec];
end
