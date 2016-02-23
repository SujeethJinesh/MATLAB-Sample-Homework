function [volume] = cylVolume(height, radius)
    volume = height .* circleArea(radius);
end

function area = circleArea(radius)
area = pi .* radius .^ 2;
end