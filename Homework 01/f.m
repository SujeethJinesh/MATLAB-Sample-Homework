
%function to find y value of given equation
function [y1] = f(x);

y1 = (1.17*sqrt(1+x^0.9)+sinh(x^2-4))/(1.6487*exp(x^2-g(x)));

end

%function to define g(x), used in f(x)

function [y2] = g(x);

y2 = x*abs(x);

end