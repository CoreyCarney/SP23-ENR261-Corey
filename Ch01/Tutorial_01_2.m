%Filename Tutorial_01_2
%Author: Corey Carney
%Assisted By: no one

% Program Description:
% The purpose of this program is to demonstrate how variables are assigned
% in Matlab. A variable that contains a single value is called a scalar.
% a single column or row of values is called a vector. A table of values
% is known as a matrix.

% Clear the command window and all variables
clc % clears the contents of the command window
clear % clears all defined variables from the Matlab workspace

% Output of the title and author to the command window.
fprintf('Output for Tutorial_01_2 written by Corey Carney. \n\n')

% Variable definitions
scalar= 5 % scalar variable
RowVector= [1 2 3 4 5 ] % row vector variable
ColumnVector= [6;7;8] % column vector variable
Matrix=[1 2 3; 4 5 6; 7 8 9] % matrix variable
name='John' % name is a row vector of characters

% The whos function displays the name, size, bytes, and class of all
%variables defined in the workspace.
whos

clear % clears all defined variables from the Matlab workspace

% The %8.6 format specifier outputs pi with a total field width of 8 with
% 6 decimal places
fprintf('The default value of pi is %8.6f\n\n',pi)

pi=10; % This command redefines pi in the workspace.
       % The semicolon supresses output.
fprintf('The redifined value of pi is %8.6f\n\n',pi')

% The following whos function will show that only pi is defined in the
% workspace because we previously cleared all other variables.
whos

clear pi % This clears the current value of pi and replaces it with
         % the default
fprintf('The value of pi after the clear pi function is %8.6f\n\n',pi')

