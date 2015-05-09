function re_entry = findThresholdPos(matrix,threshold)

[row column] = size(matrix);
re_entry = [];

for i = 1:row
    for j = 1:column
        if matrix(i,j) > threshold
            if i == j
            else
                re_entry = [re_entry ; i j];
            end
        end
    end
end