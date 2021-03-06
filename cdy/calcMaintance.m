function re_maintance = calcMaintance(data)

mincost = 3.9;
maxcost = 66.6;

effort = data(:,10);
defect = data(:,22);

mineffort = min(effort);
maxeffort = max(effort);

distance_effort = maxeffort - mineffort;
distance_cost = maxcost - mincost;

if distance_effort == 0
    distance_effort = 1;
end

if distance_cost == 0
    distance_cost = 1;
end

maintance = ((effort - mineffort)/distance_effort)*distance_cost + mincost;
maintance = maintance .* defect;

re_maintance = [data maintance];
