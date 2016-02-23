function newVec = vecResize(vec, scalar)

newVec= vec(round(linspace(1,length(vec),scalar.*length(vec)))); 

end