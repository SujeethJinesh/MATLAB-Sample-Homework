function [number] = spherePacking(sphereRadius, cubeSide)

number = floor ((cubeVol(cubeSide).*0.74048)./sphereVol(sphereRadius)); %used wolfram
%alpha for max number of spheres that could fit in a cube

end

%function to find cube volume
function [cubeVol] = cubeVol(cubeSide)

cubeVol = cubeSide ^ 3;

end

%function to find sphere volume
function [sphereVol] = sphereVol(sphereRadius)

sphereVol = (4./3) .* pi .* (sphereRadius .^ 3); 

end
