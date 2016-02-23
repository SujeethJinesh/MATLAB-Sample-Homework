function output = varInfo(vec)

output1 = 'This variable is of class '; %first statement
output2 = ' and has a value of '; %second statement
class1 = class(vec); %gets the class of vec
quotes = ''''; %used in concatenation to get the quotes

output = [output1, class1, output2, quotes, num2str(vec), quotes, '.'] %concatenates all the statements

end