function [avgP, broken] = deflateGate(first, second, third, fourth)

avgP = (first + second + third + fourth) ./ 4;

broken = first == second | second == third | third == fourth;

avgP(broken == 1) = 0;

end