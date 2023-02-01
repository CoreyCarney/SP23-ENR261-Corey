%Filename ex1 1
%Author Corey Carney
%Assisted By: no one

%Program Description:
%The purpose of this program is to demonstrate common
%arithmatic operations in MatLab

%Clear the command window of all variables
clc % clc clears the contents of the command window
clear % clear, clears all defined variables from the matlab workspace

%Output of the title and author to the command window.
fprintf('Output for ex1.1 written by Corey Carney. \n\n')

% Declare Variables
a=3
b=5
ab=[a b]

% compute using math notation

fprintf('a+b=%g\n\n', a+b) % sum
fprintf('a-b=%g\n\n', a-b) % difference
fprintf('a*b=%g\n\n', a*b) % product
fprintf('a/b=%g\n\n', a/b) % quotient

% compute using functions
fprintf('a+b=%g\n\n', sum(ab)) % sum
fprintf('a-b=%g\n\n', diff(ab)) % difference
fprintf('a*b=%g\n\n', prod(ab)) % product

