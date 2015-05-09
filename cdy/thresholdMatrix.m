function re_matrix = thresholdMatrix(matrix,threshold);

re_matrix = matrix;

[row column byte] = size(matrix);

for i = 1:row
    for j = 1:column
        if i ~= j
            if re_matrix(i,j) > threshold
                re_matrix(i,j) = 1;
            else
                re_matrix(i,j) = 0;
            end
        else
            re_matrix(i,j) = 0;
        end
    end
end

