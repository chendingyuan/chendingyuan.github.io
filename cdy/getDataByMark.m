function re_data = getDataByMark(id,data)

[row column] = size(id);

re_data = [];

for i = 1:row
    pos = id(i);
    re_data = [re_data ; data(pos,:)];
end