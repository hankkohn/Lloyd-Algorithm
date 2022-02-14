% function coverage = calcCoverage(agentPoints, partitions, density,...
%     totalMass)
function coverage = calcCoverage(agentPoints, partitions, density, totalMass)
%% coverage
% Calculates how much of the arena is being observed as a percentage.
% Considers a weighted average of the density matrix.
%
% Parameters:
%   agentPoints
%     n-by-1 cell array, where each cell is n-by-2 list of (x,y) points
%     the ith agent is observing
%   partitions
%     Number of subdivisions within each unit length of the arena
%   density
%     (sides*partitions)-by-(sides*partitions) matrix of the density for
%     the current iteration
%   totalMass
%     Mass of entire arena
%
% Returns
%   coverage
%     Percent value between 0 and 1 representing coverage
list = [agentPoints{1}];

for i = 2:size(agentPoints,1)
    list = cat(1,list,agentPoints{i});
end

list = unique(list,'rows');

totalDensity = sum(density,'all');

densityCovered = 0;
for i = 1:size(list,1)
    densityCovered = densityCovered + density(list(i,1),list(i,2));
end

coverage = densityCovered/totalDensity;

end