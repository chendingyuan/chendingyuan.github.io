function re_value = rValue(x,y)

mean_x = mean(x);
mean_y = mean(y);

temp1 = sum((x - mean_x) .* (y - mean_y));
temp2 = sqrt(sum((x - mean_x).^2) * sum((y - mean_y).^2));

re_value = temp1/temp2;