function [re_point re_dealmatrix] = findLinkedPoint(matrix,point)

re_point = [];

dealmatrix = matrix;
[row column] = size(matrix);

stack = [];

stack = stackpush(stack,point);

judge = 0;

while judge == 0
    [stack point] = stackpop(stack);
    
    if ifInMatrix(re_point,point) == 0
        re_point = [re_point point];
    end
    
    for i = 1:row
        if dealmatrix(i,point) == 1
            stack = stackpush(stack,i);
        end
    end
    
    dealmatrix(:,point) = -1;
    dealmatrix(point,:) = -1;
    
    [judgerow judgecolumn] = size(stack);
    
    if judgerow == 0
        judge = 1;
    end
end

re_dealmatrix = dealmatrix;