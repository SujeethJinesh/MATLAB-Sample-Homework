function [z] = multiVar(x,y)

z = ((x.*y) - sqrt(x)./y)./(3.*x + y); %only necessary line, used dot multiply

end