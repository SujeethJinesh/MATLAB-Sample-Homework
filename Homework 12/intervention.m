function R2Vals = intervention(struct)

power = struct.Power;
xVal = struct.X;
yVal = struct.Y;
minX = struct.minX;
maxX = struct.maxX;
numPoints = struct.numPoints;

R2Vals = [];

interpolateX = linspace(minX, maxX, numPoints);
meanY = mean(yVal);
ssTot = sum((yVal - meanY).^2);

subplot(1, 3, 1);
plot(xVal, yVal, 'b*');
hold on
interpolateY = interp1(xVal, yVal, interpolateX);
plot(interpolateX, interpolateY, 'g+');
xlabel('x-axis');
ylabel('y-axis');

ssReg = sum((interpolateY - meanY).^2);
nRegression = numPoints;
nTot = length(xVal);
R2 = round((ssReg/nRegression)./(ssTot/nTot),4);

R2Vals = [R2Vals R2];
title(sprintf('Interp1: R^2 = %0.4f', R2));
hold off


subplot(1, 3, 2);
plot(xVal, yVal, 'b*');
hold on

interpolateY = spline(xVal, yVal, interpolateX);
plot(interpolateX, interpolateY, 'g+');
xlabel('x-axis');
ylabel('y-axis');

ssReg = sum((interpolateY - meanY).^2);
R2 = round((ssReg/nRegression)./(ssTot/nTot),4);

R2Vals = [R2Vals R2];
title(sprintf('Spline: R^2 = %0.4f', R2));
hold off



subplot(1, 3, 3);
plot(xVal, yVal, 'b*');
hold on

coeff = polyfit(xVal,yVal, power);
interpolateY = polyval(coeff, interpolateX);
plot(interpolateX, interpolateY, 'g+');
xlabel('x-axis');
ylabel('y-axis');

ssReg = sum((interpolateY - meanY).^2);
R2 = round((ssReg/nRegression)./(ssTot/nTot),4);

R2Vals = [R2Vals R2];
title(sprintf('Polyfit/Polyval: R^2 = %0.4f', R2));
hold off

end