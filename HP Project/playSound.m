function playSound(filename, idMin, idMax)

period = idMax - idMin;

[time, col2, col3] = getData(filename);

frequency = length(time)./period;

%multiply by 3 to increase amplitude so the sound is audible

for n = 1:round(frequency./10)

    soundsc(30000.*col2, 2000); %play the second column

    pause(1); %pause the sound between the two for 

    soundsc(30000.*col3, 2000); %play sound
end

end