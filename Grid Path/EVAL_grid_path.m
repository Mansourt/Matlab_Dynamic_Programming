clc, clear

% Define Map (Grid Path)
Map = zeros(15, 10);
Map(3,5) = 1;
Map(6,7) = 1;
Map(7,3) = 1;

% Visualize Map (Grid Path)
MapView(Map)
%%
tic;
N1 = GridPath_R(Map, 1,1)
toc;

tic;
N2 = GridPath_DP(Map, 1,1)
toc;