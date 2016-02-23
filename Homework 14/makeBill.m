function [xx, yy, zz] = makeBill(length, radius)

u = linspace(0, radius);
v = linspace(length,length);

theta = linspace(0,pi);

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