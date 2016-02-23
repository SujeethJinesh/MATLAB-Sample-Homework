function newstring = groceries(str)

[token1, remain1] = strtok(str, ', -')
[token2, remain2] = strtok(remain1, ', -')
[token3, remain3] = strtok(remain2, ', -')

newstring = ['I need to buy ' token1 ' and ' token2 ' and ' token3 '.']

end