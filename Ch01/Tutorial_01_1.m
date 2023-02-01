%Filename Tutorial 01 1
%Author Corey Carney
%Assisted By: no one

%Program Description:
%The purpose of this program is to demonstrate common
%arithmatic operations in MatLab

%Clear the command window of all variables
clc % clc clears the contents of the command window
clear % clear, clears all defined variables from the matlab workspace

% The fprintf() function creates output.
%Itmes inside apostrophes are output exactly as typed.
%The \n operator advances the output on the next line.

%Output of the title and author to the command window.
fprintf('Output for Tutorial_01_1 written by Corey Carney. \n\n')

%The numerical result of arithmetic operations is output
% in the place given by the %g format specifier.

fprintf('2+3=%g\n\n', 2+3) % addition
fprintf('2-3=%g\n\n', 2-3) % subtraction
fprintf('2*3=%g\n\n', 2*3) % multiplication
fprintf('1/2=%g\n\n', 1/2) % right division

% The backslash character (\) is a special format specifier
% when contained inside apstrophes. To override this function we
% need to type two backslashes consecutively to output a single \.
fprintf('1\\2= %g\n\n', 1\2) %left division (\\prints a single \)

fprintf('2^3= %g\n\n',2^3) %exponentiations
