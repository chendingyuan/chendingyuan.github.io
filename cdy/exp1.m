clear all
close all
clc

data = load('data_deal.txt');

[row column byte] = size(data)

list = [data(:,1) data(:,2)];

sortindex = 1:row;
sortindex = sortindex';

list1 = sortrows(list,1);
list1 = [list1 sortindex];

list2 = sortrows(list1,2);
list2 = [list2 sortindex];

list3 = sortrows(list2,1);

dlist = list3(:,3:4);

d1 = dlist(:,1) - dlist(:,2);
d2 = d1.*d1;

temp1 = 6*sum(d2);
temp2 = row*(row*row - 1);
p = 1 - temp1/temp2

