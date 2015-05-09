function [] = showMetricsName(numlist,namelist)

[row column] = size(numlist);

for i = 1:row
    for j = 1:column
        pos = numlist(i,j);
        % disp(namelist(pos));  % ²»Êä³ö±àhºÅ
        temp = namelist{pos};
        str = sprintf('%d.\t %s',pos,temp);
        disp(str);
    end
end