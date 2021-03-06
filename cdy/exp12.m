clear all
close all
clc

data = load('data/CM1_deal.txt');

re_value = regressionFunc(data(:,1),data(:,2),data(:,3),data(:,4),data(:,5),data(:,6),data(:,7),data(:,8), data(:,9),data(:,11),data(:,12),data(:,13),data(:,14),data(:,15),data(:,16),data(:,17),data(:,18),data(:,19),data(:,20),data(:,21));

[row column] = size(re_value);

truth = data(400:row,23);
result = re_value(400:row);

result2=abs(truth-result);

frac = (truth + result)/2;

index = frac == 0;
frac(index) = 1;

finresult = result2./frac;


x = 400:1:row;
x = x';

figure
plot(x,truth,'b',x,result,'r');


figure
plot(x,result,'r');

a = 1