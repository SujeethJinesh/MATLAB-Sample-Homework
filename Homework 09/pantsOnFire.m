function str = pantsOnFire(cell)

[row, col] = size(cell);

wear = {};

notWear = {};

m = 1;

l = 1;

for n = 1:col
   
    if(isequal(cell{2,n}, true) & isequal(cell{3,n}, true))
       
        wear(m) = cell(1,n);
        
        m = m + 1;
        
    else
        notWear(l) = cell(1,n);
        
        l = l + 1;
    end
    
end

strWear = getWear(wear, m);

strNotWear = getNotWear(notWear, l);

str = ['You should wear the ' strWear ', but DO NOT wear the ' strNotWear '.'];

end

function output = getWear(wear,length)

length = length - 1;

str = [];

for n = 1:length
   
    if length == 1
        
        str = [str wear{1}(1:end)];
        
        break;
    
    elseif length == 2
    
        str = [str wear{1}(1:end) ' and/or ' wear{2}(1:end)];
        
        break;
        
    elseif n < length - 1
       
        str = [str wear{n}(1:end) ', '];
        
    elseif n == length - 1
       
        str = [str wear{n}(1:end)];
        
    elseif n == length & length ~= 2
        
        str = [str ' and/or ' wear{n}(1:end)];
        
    end
    
end

output = str;

end

function output = getNotWear(wear,length)

length = length - 1;

str = [];

for n = 1:length
   
    if length == 1
        
        str = [str wear{1}(1:end)];
        
        break;
    
    elseif length == 2
    
        str = [str wear{1}(1:end) ' or ' wear{2}(1:end)];
        
        break;
    
    elseif n < length - 1
       
        str = [str wear{n}(1:end) ', '];
        
    elseif n == length - 1
       
        str = [str wear{n}(1:end)];
        
    elseif n == length
        
        str = [str ' or ' wear{n}(1:end)];
        
    end
    
end

output = str;

end

