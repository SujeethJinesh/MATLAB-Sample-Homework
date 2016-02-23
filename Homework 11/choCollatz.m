function [left, numChildren] = choCollatz(n)

numChildren = 0;

[left, numChildren] = choCollatzWrapper(n, numChildren);

end

function [left, numChildren] = choCollatzWrapper(n, numChildren)

if n >= 2

if mod(n,2) == 0
    
    [left, numChildren] = choCollatzWrapper(n/2, numChildren);
    
    numChildren = numChildren + 1;
    
else
    
    numChildren = numChildren + 1;
    
    [left, numChildren] = choCollatzWrapper((n.*3 + 1)./2, numChildren);
    
end

else
    
    left = n;
    
    numChildren = numChildren;

end

end