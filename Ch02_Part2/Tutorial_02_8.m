% Filename: Tutorial_02_8
% Auhtor: John Wadach
% Assisted by: no one

% Program description: 
% The purpose of this program is to demonstrate the use of if, ifelse,
% constructs

clc
clear

fprintf('Output for Tutorial_02_8 written by Corey Carney.\n\n')

% The if-end construct may be written on one line
% Notice that only if the logical test is true will the disp command
% be executed.

x= input('Type in a value less than 10 then hit enter: ');
if( x>10 ) disp('x is greater than 10'), end


% if two or more operations are required if the test is true, it is best
% to split the if-end into multiple lines to improve readability

x=7;
if(x>10)
    fprintf('\n\nx = %g\n',x)
    fprintf('x is less than 10\n')
end

% The if-else construct allows for statements to be executed if the test 
% is true or false

x=12;
fprintf('\n\nx = %g\n',x)
if(x<10)
    fprintf('x is less than 10\n') % executed if x<10
else
    fprintf('x is greater than or equal to 10\n') % executed if x>=10
end

% The if-else construct allows for statements to be executed if the
