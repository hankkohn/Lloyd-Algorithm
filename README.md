# Lloyd-Algorithm

Code written to implement Lloyd's Algorithm in a crowd of clients with density given by a normal distribution function. The simulation is run from the file entitled "simulation.mlx" and iteratively calls the functions defined in the other files in this repository. Each of the 20 agents (seen as dots in the simulation) have predefined radii of communication and observation which determine which other agents they can communicate with and which clients they can see, respectively. During each iteration of the simulation the centroid of each agent's observed region is calculated and it takes a small step in that direction. When the next iteration occurs its centroid is recalculated and it moves towards its new centroid. The simulation continues iteratively until each agent is at its centroid, which can be considered to be its "optimal" position for the given simulation parameters. It is important to note that this is not necessarily the optimal positioning in absolute terms as none of the agents can observe the entire arena or communicate with every other agent.
