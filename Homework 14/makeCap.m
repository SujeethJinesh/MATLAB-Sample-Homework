function [xx, yy, zz] = makeCap(radius, coeffs)

u = linspace(0, radius);

theta = linspace(0,2*pi);

[uu, ttheta] = meshgrid(u,theta);

rr = uu;

vv = polyval(coeffs, rr);

zz = vv;

xx = rr.*cos(ttheta);
yy = rr.*sin(ttheta);

surf(xx,yy,zz)

xlabel('x-axis')
ylabel('y-axis')
zlabel('z-axis')

end