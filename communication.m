function [commCells,adjMatrix] = communication(agentPositions,rComm)
%% communication
% Determines the adjacency matrix and communication cells of all agents
%
% Parameters:
%   agentPositions
%     n-by-2 vector of the x, y positions for n agents
%   rComm
%     Radius of communication for all agents
%
% Returns:
%   commCells
%     Cell array, where each cell is one communication group
%   adjMatrix
%     The symmetric adjacency matrix 

n = size(agentPositions, 1);

for i = 1:n
    for j = 1:n
        if sqrt((agentPositions(i,1)-agentPositions(j,1))^2 + (agentPositions(i,2)-agentPositions(j,2))^2) < rComm
            adjMatrix(i,j) = 1;
        else
            adjMatrix(i,j) = 0;
        end
    end
end

commCells = rangesearch(agentPositions, agentPositions, rComm);

commCells = commCells';

for i = 1:size(commCells, 2)
    commCells{i} = commCells{i}';
end

end
            