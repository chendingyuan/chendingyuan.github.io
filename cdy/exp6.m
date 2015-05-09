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

list = (data(:,1) + data(:,2))/2;
rvalue = rValue(list,data(:,22))