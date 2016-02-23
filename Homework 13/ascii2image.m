function ascii2image(filename, chars, vals)

text = [];

fh = fopen(filename, 'r');

line = fgetl(fh);

while ischar(line)
    
    text = [text; line];

    line = fgetl(fh);
    
end

[row, col] = size(text);

array = zeros(row, col);

for m = 1:row
    
    for n = 1:col
        
        array(m,n,1) = vals(chars == text(m,n));
        
        array(m,n,2) = array(m,n,1);
        
        array(m,n,3) = array(m,n,1);
    end
end

array = uint8 (array);

imwrite(array, [strtok(filename, '.') '.png'])

end