function [crimNames, dist] = mostWanted(arr,travelAbility)

wantedLevel = [arr.Points];
[sorted, index] = sort(wantedLevel,'descend');
crimNames = [];
dist = 0;
canGo = true;
agent = 'NA';
arr = arr(index);

while  canGo 
     if length(arr) > 1

            [sorted, index] = sort(sorted,'descend');

            arr = arr(index);

            firstCrim = arr(1).Location;
            dist1 = getDistanceToTravel(firstCrim);
         
            secondCrim = arr(2).Location;
            dist2 = getDistanceToTravel(secondCrim);
         
            if strcmp(agent, secondCrim)
                dist2 = 50;
            end
            
            if strcmp(agent, firstCrim)
                dist1 = 50;
            end
         
            
            if dist1 > dist2
                if dist + dist2 <= travelAbility 

                    dist = dist + dist2;
                    crimNames = [crimNames,arr(2)]; 
                    agent = secondCrim; 
                    arr(2) = []; 
                    sorted(2)=[]; 

                else
                    canGo = false;
                end
            elseif dist1 < dist2
                if dist + dist1 <= travelAbility 

                    dist = dist + dist1; 
                    crimNames = [crimNames, arr(1)]; 
                    agent = firstCrim; 
                    arr(1) = []; 
                    sorted(1)=[];
                else
                    canGo = false;
                end
            elseif dist1 == dist2
                if dist + dist1<= travelAbility

                   dist = dist + dist1;
                   crimNames = [crimNames, arr(1)];
                   agent = firstCrim;
                   arr(1) = [];
                   sorted(1)=[];
                else
                    canGo = false;
                end
            end
        else

        firstCrim = arr(1).Location;
        dist1 = getDistanceToTravel(firstCrim);

          if dist + dist1<= travelAbility

                dist = dist + dist1;
                crimNames = [crimNames, arr(1)];
                agent = firstCrim;
                arr(1) = [];
                sorted(1)=[];

          end
          canGo = false;
      end

  end

end

function distance = getDistanceToTravel(location)

   switch location
       case 'NE'
           distance = 200;
       case 'SE'
           distance = 300;
       case 'MW'
           distance = 500;
       case 'NW'
           distance = 600;
       case 'W'
           distance = 700;
   end
end