clear all
close all
clc

data = load('data/PC1_deal_by_hand.txt');

[row column byte] = size(data);

rmatrix = zeros(column,column);

for i = 1:column
    for j = 1:column
        rvalue = rValue(data(:,i),data(:,j));
        rmatrix(i,j) = rvalue;
    end
end

x = data(:,1);
y = data(:,2);

figure
plot(x,y,'.b')

re_entry = findThresholdPos(rmatrix,0.9);
re_matrix = thresholdMatrix(rmatrix,0.4);
