function logic = solver(arr)

logic1 = arr >= 1 & arr <= 9;

logic = sum(sum(logic1)) == 9;

end