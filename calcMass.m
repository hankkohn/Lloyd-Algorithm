function mass = calcMass(agentPoints,density,partitions)
%% calcMass,
% Calculates the mass of the observed region for each agent
%
% Parameters:
%   agentPoints
%     n-by-1 cell array, where cell i contains agent i's observed points
%   density
%     (sides*partitions)-by-(sides*partitions) matrix of the density for
%     the current iteration
%   partitions
%     Number of subdivisions within each unit length of the arena
%
% Returns:
%   mass
%     n-by-1 vector where the ith entry is the mass of agent i's observed
%     region (x) sum(density(partitions*[x(:,2) x(:,1)]),'all')

for i = 1:size(agentPoints, 1)
    mass(i) = 0;
    temp = agentPoints{i};
    for j = 1:size(temp,1)
        mass(i) = mass(i) + (density(temp(j,1),temp(j,2)));
    end
end

end
    