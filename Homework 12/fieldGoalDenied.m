function logical = fieldGoalDenied(velo, verticalLeap)

logical = false;

subplot(1, 3, 1);
plot(velo(2, :), velo(1, :), 'k-')
ylabel('Velocity');
xlabel('Time');

subplot(1, 3, 2);
acc = diff(velo(1, :))./diff(velo(2, :));
plot(velo(2, 2:end), acc, 'b-')
ylabel('Acceleration');
xlabel('Time');

subplot(1, 3, 3);
pos1 = cumtrapz(velo(2, :),velo(1, :));
plot(velo(2, :), pos1, 'm-')
ylabel('Position');
xlabel('Time');
hold on
plot(verticalLeap(2), verticalLeap(1), 'g+')
atLeap = polyval((polyfit(velo(2, :),pos1, 7)), verticalLeap(2));
plot(verticalLeap(2), atLeap, 'ro');

if verticalLeap(1) >= atLeap
    
    logical = true;
    
end

end