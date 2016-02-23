function [distance] = distCalc(xa, ya, xb, yb)

distance1 = sqrt((xa - xb).^2 + (ya - yb).^2 ); %distance calculation without rounding

distance = round(distance1, 2); %rounding of distance taken into account here

end