function [beforeTax, afterTax] = tippingPoint(beforeMeal, restaurantDecimal, tipPercent)

beforeTax = round(beforeMeal.*(tipPercent./100),2); %tip given before tax

%tip given after tax
afterTax = round(beforeMeal.*(1+restaurantDecimal).*(tipPercent./100),2); 

end