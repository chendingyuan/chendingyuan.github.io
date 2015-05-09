function re_judge = ifGraphicEmptry(matrix)

sumvalue = sum(sum(matrix));

if sumvalue == 0
    re_judge = 0;
else
    re_judge = 1;
end