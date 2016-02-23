function [sideC] = lawOfCosines(sideA, sideB, angleAB)

sideC = sqrt(sideA^2 + sideB^2 - 2.*sideA.*sideB.*cosd(angleAB)); %formula for law of cosines

end