function [xx, yy, zz] = makePropeller(minimum, maximum, radius)

u = linspace(minimum, maximum);
v = sin(u);

theta = linspace(0,2.*pi);

[uu, ttheta] = meshgrid(u,theta);

[vv, ttheta] = meshgrid(v,theta);

rr = vv;

xx = uu;

yy = rr.*cos(ttheta);
zz = rr.*sin(ttheta);

surf(xx,yy,zz)

xlabel('x-axis')
ylabel('y-axis')
zlabel('z-axis')

end