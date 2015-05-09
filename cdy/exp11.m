clear all
close all
clc

CM1 = load('data/CM1_deal.txt')
JM1 = load('data/JM1_deal.txt');
KC1 = load('data/KC1_deal.txt');
KC2 = load('data/KC2_deal.txt');
PC1 = load('data/PC1_deal.txt');

pos = 1;

tempFunc1(CM1,pos);
tempFunc1(JM1,pos);
tempFunc1(KC1,pos);
tempFunc1(KC2,pos);
tempFunc1(PC1,pos);
