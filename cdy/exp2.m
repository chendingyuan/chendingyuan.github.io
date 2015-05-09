clear all
close all
clc

data = load('data_deal.txt');

[row column byte] = size(data)

list = [data(:,1) data(:,2)];

list1 = normalMatrix(list(:,1));
list2 = normalMatrix(list(:,2));

d1 = list1 - list2;
d2 = d1.*d1;

