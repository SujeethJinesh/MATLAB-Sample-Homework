function newword = capitalized(word)
word(1:2:end) = word(1:2:end) + 'A' - 'a';
newword = char(word);
end