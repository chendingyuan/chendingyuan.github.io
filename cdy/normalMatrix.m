function re_matrix = normalMatrix(matrix)

maxvalue = max(matrix);

if maxvalue == 0
    maxvalue = 1;
end

re_matrix = matrix./maxvalue;