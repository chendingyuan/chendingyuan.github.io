function re_matrix = pos2Matrix(pos);

maxvalue1 = max(pos(:,1));
maxvalue2 = max(pos(:,2));

re_matrix = zeros(maxvalue1,maxvalue2);

[row column] = size(pos);

for i = 1:row
    for j = 1:column
        re_matrix(pos(i,1),pos(j,2)) = 1;
    end
end