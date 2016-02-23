function codeword = decode(codeword, shift)
    newword = codeword + shift;
    codeword = char(newword);
end