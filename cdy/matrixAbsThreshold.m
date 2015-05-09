function re_matrix = matrixAbsThreshold(matrix,threshold);

[row column] = size(matrix);
re_matrix = zeros(row,column);

for i = 1:row
    for j = 1:column
        if i~= j
            if abs(matrix(i,j)) > threshold
                re_matrix(i,j) = 1;
            end
        end
    end
end