function boolean = tooSimilar(arr1, arr2)

boolean = countMatches(arr1, arr2) > 3;

end

function matches = countMatches(arr1, arr2)

matches = sum(sum(arr1 == arr2));

end

function score = scoreAs (arr1)

score1 = 10*sum(arr1(1, 1:end) >= 90);

score2 = 2*sum(arr1(2:end, 1:end) >= 90);

score = score1 + score2;

end