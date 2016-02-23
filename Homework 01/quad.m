
%function to find positive and negative roots of polyomial given starter
%coefficients
function [posRoot, negRoot] = quad(A,B,C);

posRoot = (-B + sqrt(B^2-4*A*C))/(2*A);

negRoot = (-B - sqrt(B^2-4*A*C))/(2*A);

end