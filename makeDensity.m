function [d] = makeDensity()
%d is the matrix 

%making the distribution matrix 

x = linspace(-10,10,21); 

[X1,X2] = meshgrid(x,x); 

d1 = normpdf(X1, 0, 5); 

d2 = normpdf(X2, 0, 5); 

d = d1.*d2; 

  

%defining people count for each region 

people = 10000; 

generalPeople = people*0.2; 

aberdeenPeople = people*0.75; 

sideAberdeen = people*0.05; 

  

%putting people on the grid 

d = d*generalPeople; 

  

%making aberdeen constant distribution 

d(1:21, 11) = d(1:21, 11) + aberdeenPeople/(21); 

d(1:21, 10) = d(1:21, 10) + sideAberdeen/(21/2); 

d(1:21, 12) = d(1:21, 12) + sideAberdeen/(21/2); 

%visal plotter 

%imagesc(d);

end