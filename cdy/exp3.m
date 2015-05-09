clear all
close all
clc

data = load('data_deal.txt');

[row column byte] = size(data)

list = [data(:,1) data(:,22)];



m1 = mean(list(:,1));
m2 = mean(list(:,2));

temp1 = list(:,1) - m1;
temp2 = list(:,2) - m2;

frac1 = sum(temp1 .* temp2);
frac2_1 = temp1 .* temp1;
frac2_2 = temp2 .* temp2;
frac2 = sum(frac2_1)*sum(frac2_2);
tfrac2 = sqrt(frac2);

result = frac1/tfrac2