function re_judge = ifInMatrix(matrix,entry)

re_judge = 0;
[row column] = size(matrix);

for i = 1:row
    for j = 1:column
        if matrix(i,j) == entry
            re_judge = 1;
        end
    end
end