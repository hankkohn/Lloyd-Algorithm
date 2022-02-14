% function [agentPositions, distanceTravelled, energy] = moveAgents(agentPositions,...
%     centroids, sides, dt, energy, velocityType, maxVelocity, scaleFactor)

% function [agentPositions, distanceTravelled, energy] = moveAgents(agentPositions,...
%     centroids, sides, dt, energy, velocityType, maxVelocity)

function agentPositions = moveAgents(agentPositions,...
    centroids, dt, maxVelocity)
%% moveAgents
% Moves each agent towards its assigned centroid. Must ensure agents don't
% move out of bounds.
% 
% Parameters:
%   agentPositions
%     n-by-2 vector of the x, y positions for n agents before moving
%   centroids
%     n-by-2 vector of the x, y centroid locations that agents move towards
%   dt
%     Simulated time step
%   sides
%     Side length of the arena
%   energy
%     n-by-1 vector of agent energy before moving
%   velocityType
%     Either "Constant Velocity" or "Proportional Velocity" as determined
%     in the GUI
%   maxVelocity
%     If velocityType = "Constant Velocity", this is the constant velocity
%     Otherwise, this is the maximum velocity at which agents can travel
%   scaleFactor
%     Used for "Proportional Velocity". Velocity is proportional to 
%     distance between agent and centroid, scaled by the scale factor
%
% Returns:
%   agentPositions
%     n-by-2 vector of x, y positions of for the n agents after moving
%   distanceTravelled
%     n-by-1 vector of distance travelled by each agent this iteration
%   energy
%     n-by-1 vector of agent energy after moving

for i = 1:size(agentPositions,1)
    length = sqrt((centroids(i,1) - agentPositions(i,1))^2 + (centroids(i,2) - agentPositions(i,2))^2);
    velVectorX = (centroids(i,1) - agentPositions(i,1))/length;
    velVectorY = (centroids(i,2) - agentPositions(i,2))/length;
    
    agentPositions(i,1) = agentPositions(i,1) + velVectorX*dt*maxVelocity;
    agentPositions(i,2) = agentPositions(i,2) + velVectorY*dt*maxVelocity;
    
%     if ((agentPositions(i,1) + velVectorX*dt*maxVelocity) < 21) && ((agentPositions(i,1) + velVectorX*dt*maxVelocity) > 1)
%         agentPositions(i,1) = agentPositions(i,1) + velVectorX*dt*maxVelocity;
%     else
% 
%         agentPositions(i,1) = agentPositions(i,1);
%     end
%     
%     if ((agentPositions(i,2) + velVectorX*dt*maxVelocity) < 21) && ((agentPositions(i,2) + velVectorX*dt*maxVelocity) > 1)
%         agentPositions(i,2) = agentPositions(i,2) + velVectorX*dt*maxVelocity;
%     else
% 
%         agentPositions(i,2) = agentPositions(i,2);
%     end

    %distanceTravelled(i) = sqrt((velVectorX*dt*maxVelocity)^2 + (velVectorY*dt*maxVelocity)^2);
end



end
