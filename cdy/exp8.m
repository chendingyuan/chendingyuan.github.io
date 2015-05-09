clear all
close all
clc

addpath('../common/');

metricsname = {'loc numeric'
'v(g) numeric'
'ev(g) numeric'
'iv(g) numeric'
'n numeric'
'v numeric'
'l numeric'
'd numeric'
'i numeric'
'e numeric'
'b numeric'
't numeric'
'lOCode numeric'
'lOComment numeric'
'lOBlank numeric'
'locCodeAndComment numeric'
'uniq_Op numeric'
'uniq_Opnd numeric'
'total_Op numeric'
'total_Opnd numeric'
'branchCount numeric'
'defects {false,true}'};

data = load('data/PC1_deal_by_hand.txt');

[row column byte] = size(data);

rmatrix = zeros(column,column);

for i = 1:column
    for j = 1:column
        rvalue = rValue(data(:,i),data(:,j));
        rmatrix(i,j) = rvalue;
    end
end

re_matrix = matrixAbsThreshold(rmatrix,0.9);

[row column] = size(re_matrix);

dealmatrix = re_matrix;

point_all = [];

for i = 1:row
    if sum(dealmatrix(i,:)) ~= -22
        [class_point dealmatrix] = findLinkedPoint(dealmatrix,i);
        showMetricsName(class_point,metricsname);
        disp(' ')
    end
    
end




