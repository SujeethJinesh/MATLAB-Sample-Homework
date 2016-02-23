function verdict = criminalMinds(S1, S2, S3, S4)

R123 = all(S1 == S2 & S2 == S3); %creates combinations of 4C3 inmates

R234 = all(S2 == S3 & S3 == S4); %compares all the values

R341 = all(S3 == S4 & S4 == S1);

R412 = all(S4 == S1 & S1 == S2);

results = [R234 R341 R412 R123]; %puts results into a vector

position = find(results == 1); %this set will be the culprit

verdict = ['Suspect #' num2str(position) ' is lying.']; %output

end