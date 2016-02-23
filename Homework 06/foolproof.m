function output = foolproof(input)

if isa(input,'double') %checks if the input value is a double
    if (round(input) == input)
       output = powerOfTwo(input); %checks if it's a power of two
    else
    output = 'Please input a natural number.'; %fail safe
    end
elseif isa(input, 'logical') %checks if a logical
    
    output = 'The input type is invalid. Please input a natural number.';
    
elseif isa(input, 'char') %checks if char
    
    output = 'When you use the '' symbol, it clogs the gears in the computer''s calculator. Please input a natural number.';
else
    output = powerOfTwo(input);
    
end

end

function output = powerOfTwo(number)

num = double(dec2bin(number));

numFind = sum(num == 49);

output = numFind == 1;

end