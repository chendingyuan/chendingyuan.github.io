clear all
close all
clc

data = load('data/CM1_deal_by_hand.txt');
finaresult = calcMaintance(data);
txtWrite(finaresult,'CM1_deal.txt');

data = load('data/JM1_deal_by_hand.txt');
finaresult = calcMaintance(data);
txtWrite(finaresult,'JM1_deal.txt');

data = load('data/KC1_deal_by_hand.txt');
finaresult = calcMaintance(data);
txtWrite(finaresult,'KC1_deal.txt');

data = load('data/KC2_deal_by_hand.txt');
finaresult = calcMaintance(data);
txtWrite(finaresult,'KC2_deal.txt');

data = load('data/PC1_deal_by_hand.txt');
finaresult = calcMaintance(data);
txtWrite(finaresult,'PC1_deal.txt');