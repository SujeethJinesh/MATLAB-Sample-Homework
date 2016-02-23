function count = countNum(arr,num)

[row, col] = size(arr); %gets the array dimensions

count = 0;

for m=1:row             %goes through each row
    for n=1:col                 %goes through each column
        if arr(m,n) == num
            count = count + 1;
        end
        n = n+1;
    end
    m = m + 1;
end

end