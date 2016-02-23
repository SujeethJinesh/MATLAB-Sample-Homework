function hairParlour(name, oldHair, newHair)

origImg = imread(name);

afterImg = origImg;

[row, col, ~] = size(afterImg);

switch oldHair
    case 'Blonde'
        switch newHair
            case 'Brunette'
                for n = 1:row
    
                    for m = 1:col
        
                        if (afterImg(n,m,1) <= 255 & afterImg(n,m,1) >= 205 & afterImg(n,m,2) <= 230 & afterImg(n,m,2) >= 180 & afterImg(n,m,3) <= 165)
            
                            afterImg(n,m, 1) = 141;
                    
                            afterImg(n,m, 2) = 70;
                    
                            afterImg(n, m, 3) = 50;
                    
                        end
        
                    end
                end
    
        
            case 'Red'
        
              for n = 1:row
    
                    for m = 1:col
        
                        if (afterImg(n,m,1) <= 255 & afterImg(n,m,1) >= 205 & afterImg(n,m,2) <= 230 & afterImg(n,m,2) >= 180 & afterImg(n,m,3) <= 165)
            
                            afterImg(n,m, 1) = 212;
                    
                            afterImg(n,m, 2) = 80;
                    
                            afterImg(n, m, 3) = 24;
                    
                        end
        
                    end
              end
        end
        
    case 'Brunette'
    
        switch newHair
            case 'Blonde'
        
                for n = 1:row
    
                    for m = 1:col
        
                        if (afterImg(n,m,1) <= 155 & afterImg(n,m,1) >= 100 & afterImg(n,m,2) <= 80 & afterImg(n,m,2) >= 30 & afterImg(n,m,3) <= 60 & afterImg(n,m,3) >= 15)
            
                            afterImg(n,m, 1) = 255;
                    
                            afterImg(n,m, 2) = 219;
                    
                            afterImg(n, m, 3) = 74;
                    
                        end
        
                    end
    
                end
        
            case 'Red'
        
              for n = 1:row
    
                    for m = 1:col
        
                        if (afterImg(n,m,1) <= 155 & afterImg(n,m,1) >= 100 & afterImg(n,m,2) <= 80 & afterImg(n,m,2) >= 30 & afterImg(n,m,3) <= 60 & afterImg(n,m,3) >= 15)
            
                            afterImg(n,m, 1) = 212;
                    
                            afterImg(n,m, 2) = 80;
                    
                            afterImg(n, m, 3) = 24;
                    
                        end
        
                    end
              end
        end
        
    case 'Red'
        
        switch newHair
            case 'Blonde'
        
                for n = 1:row
    
                    for m = 1:col
        
                        if (afterImg(n,m,1) <= 255 & afterImg(n,m,1) >= 210 & afterImg(n,m,2) <= 115 & afterImg(n,m,2) >= 80 & afterImg(n,m,3) <= 30 & afterImg(n,m,3) >= 25)
            
                            afterImg(n,m, 1) = 255;
                    
                            afterImg(n,m, 2) = 219;
                    
                            afterImg(n, m, 3) = 74;
                    
                        end
        
                    end
    
                end
        
            case 'Brunette'
                for n = 1:row
    
                    for m = 1:col
        
                        if (afterImg(n,m,1) <= 255 & afterImg(n,m,1) >= 210 & afterImg(n,m,2) <= 115 & afterImg(n,m,2) >= 80 & afterImg(n,m,3) <= 30 & afterImg(n,m,3) >= 25)
            
                            afterImg(n,m, 1) = 141;
                    
                            afterImg(n,m, 2) = 70;
                    
                            afterImg(n, m, 3) = 50;
                    
                        end
        
                    end
                end
        end
        
end

array = [origImg afterImg];

filename = [strtok(name, '.') '_beforeAfter.png'];

imwrite(array, filename);

end