function [force] = gravCalc(mass1, distance)

G = 6.67e-11; %Univeral gravitational constant

mass2 = 5.97e24; %Mass of Earth

force = G .* ((mass1) .* (mass2))./((distance) .^ 2); %Final force calculation

end