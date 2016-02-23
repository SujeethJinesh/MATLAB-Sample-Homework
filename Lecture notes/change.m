function output = change(size)

output = zeros(size);

perim = 4.*size;

repository = [1:perim-4];

row1 = repository(1:size);

output(1,1:end) = row1;

colEnd = repository(size+1:2*size-1);

output(2:end, end) = colEnd

rowEnd = repository(3*size-1:-1:2*size);

%next = repository(3.*size-1:-1:2.*size);

output(size, 1:end-1) = rowEnd;

%output(2:end-1, 1) = repository(end:-1:3*size-2)

end