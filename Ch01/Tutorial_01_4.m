%Filename Tutorial_01_4
%Author: Corey Carney
%Assisted By: no one

% Program Description:
% The purpose of this program is to demonstrate how to create 2D plots.

% Clear the command window and all variables
clc % clears the contents of the command window
clear % clears all defined variables from the Matlab workspace
close all %closes all figure windows

% Define the x and y vectors
x=[0:0.25:3];
y=10*exp(-x);

% plot opens a Figure window 1 and creates a plot of discrete points
plot(x,y,'*')
grid on % adds gridlines to the graph
xlabel('Independent Variable (X)') % Adds a label below the X axis
ylabel('Dependent Variable (Y)')   % Adds a label to the left of the Y axis
title('Y = 10*exp(-X)')            % Adds a title above the graph

figure % Opens Figure Window 2
       % Without the figure command the next plot would erase the first
       % plot in Figure Window 1

% The fplot command allows a function to be plotted over a given domain
fplot('3.5^(-0.5*x)*cos(6*x)',[-2.0,4.0])
grid on

xlabel('Independent Variable (X)') % Adds a label below the X axis
ylabel('Dependent Variable (Y)')   % Adds a label to the left of the Y axis
title('Y = 3.5^(-0.5*x)*cos(6*x)')  % Adds a title above the graph

