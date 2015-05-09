function [] = tempFunc1(matrix,pos)

[row column] = size(matrix);

listdata = matrix(:,pos);

pos_x = 1:1:row;
pos_x = pos_x';

figure
plot(pos_x,listdata,'.b');

figure
hist(listdata,50);
