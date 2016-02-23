function polyFun(x, y, power)

%original data
subplot(1,3,1)
title('Original Data')
hold on
plot(x, y, 'g')
x1 = linspace(min(x), max(x), 200);
y1 = x1.^power;
hold on
plot(x1, y1, 'b');
hold on

%derivative data
subplot(1,3,2)
title('Derivative Data')
hold on
x1 = linspace(min(x), max(x(1:end-1)), 200);
y1 = power.*x1.^(power-1);
hold on
plot(x1, y1, 'g');
hold on
plot(x(1:end-1), diff(y)./diff(x), 'b')
hold on

%Integral data
subplot(1,3,3)
title('Integral Data')
hold on
plot(x, cumtrapz(x,y), 'b')
x1 = linspace(min(x), max(x), 200);
y1 = (1/(power+1)).*x1.^(power+1);
hold on
plot(x1, y1, 'g');
hold on

end