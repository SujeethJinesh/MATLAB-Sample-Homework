function newVec = asciiResize(vec, scalar)

[row, col] = size(vec);

newVec1= round(linspace(1,row,round(scalar.*row)));

newVec2= round(linspace(1,col,round(scalar.*col)));

newVec = vec(newVec1, newVec2);

end
