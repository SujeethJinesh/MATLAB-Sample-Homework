function header1()
    [a,b] = header2(13,71);
end

function [out1, out2] = header2(param1, param2)
    out1 = param2;
    out2 = param1;
    out3 = header3();
end

function [out1] = header3()
out1 = 12;
end
