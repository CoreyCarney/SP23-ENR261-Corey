%Filename Tutorial_01_5
%Author: Corey Carney
%Assisted By: no one

% Program Description:
% The purpose of this program is to demonstrate how to create multiple
% 3D plots.

% Clear the command window and all variables
clc % clears the contents of the command window
clear % clears all defined variables from the Matlab workspace
close all %closes all figure windows

% Define the x and y vectors
xVector=[-3.0:0.20:3];
yVector=xVector;

% Create the x,y, mesh
[x,y]= meshgrid(xVector,yVector);

% Compute z values
z= 1.8.^(-1.5*sqrt(x.^2+y.^2)).*cos(0.5*y).*sin(x);

% Create the surface plot and add title and axis labels
surf(x,y,z)
grid on
xlabel('X') % Adds an X axis label
ylabel('Y') % Adds a Y axis label
zlabel('Z') % Adds a Z axis label
title('Surface Plot') % adds a title

figure

%Create the 3D contour plot and add title and axis labels
contour3(x,y,z,20) % 20 is the n of contour lines
grid on
xlabel('X') % Adds an X axis label
ylabel('Y') % Adds a Y axis label
zlabel('Z') % Adds a Z axis label
title('3D Contour Plot') % adds a title

figure % open a new figure window

% Create the 2D contour plot
contour(x,y,z,20) % 15 is the n of contour lines
grid on
xlabel('X') % Adds an X axis label
ylabel('Y') % Adds a Y axis label
zlabel('Z') % Adds a Z axis label
title('2D Contour Plot') % adds a title

figure % open a new figure window

% Create the 3D stem plot and add title and axis labels 
clear
t=[0:0.2:10]
x=t; y=sin(t); z=t.^1.5;  % define the x,y,z points to plot
stem3(x,y,z,'filled') % filled adds a solid fill to the data points
grid on
xlabel('X') % Adds an X axis label
ylabel('Y') % Adds a Y axis label
zlabel('Z') % Adds a Z axis label
title('Stem Plot') % adds a title