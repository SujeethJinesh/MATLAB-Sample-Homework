function[struct] = dataRead(txt)
txth = fopen(txt);
l = fgetl(txth);
x = l;
y = {};
while ~isempty(x)
    [a,x] = strtok(x,',');
    y = [y,a];
end
arr = [];
while ischar(l)
    l = fgetl(txth);
    if ischar(l)
        z = l;
        w = [];
        while ~isempty(z)
            [b,z] = strtok(z,',');
            b = str2num(b);
            w = [w,b];
        end
        arr = [arr;w];
    end
end
for q = 1:length(y)
    struct.(y{q}) = arr(:,q);
end
end