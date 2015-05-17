clear all
close all
clc

data = load('test.txt');

[row column] = size(data);

randnum = rand(1,row);
randnum = randnum';
list = 1:row;
list = list';

matrix = [randnum list];

sortmatrix = sortrows(matrix,1);

[row_s column_s] = size(sortmatrix);

part = 3;

idlist = sortmatrix(:,2);

trainid = idlist(1:part);
testid = idlist(part+1:row_s);

traindata = getDataByMark(trainid,data);
testdata = getDataByMark(testid,data);

txtWrite(traindata,'test_train.txt');
txtWrite(testdata,'test_test.txt');