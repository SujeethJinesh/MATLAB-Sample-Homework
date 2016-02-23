function output = criticalFailure(vec)

if vec(1) ~= 1 %tests if not 1, and gives you instant value
    output = 'Good Job!';
elseif vec(1) == 1 %simple switch case to determine the corresponding values
    if (vec(2) >= 1 & vec(2) <= 5)
        output = 'Right Leg Wounded';
    end
    if (vec(2) >= 6 & vec(2) <= 10)
        output = 'Left Leg Wounded';
    end
    if (vec(2) >= 11 & vec(2) <= 15)
        output = 'Right Arm Wounded';
    end
    if (vec(2) >= 16 & vec(2) <= 20)
        output = 'Left Arm Wounded';
    end
end
end