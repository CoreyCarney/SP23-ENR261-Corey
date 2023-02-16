% Filename: Tutorial_02_5
% Auhtor: John Wadach
% Assisted by: no one

% Program description:
% the purpose of this program is to demonstrate the different forms of for
% loops in matlab.

%clear command window and all vars
clc
clear

% The compact format sets the default line spacing to single spacing
format compact

% output of the title and author to the command window.
fprintf('output for Tutotial_02_5 written by Corey Carney.\n\n')

% The following shows a one line for loop.
% The command between the for and the end will be repeated for i=0 to i=6
% in increments of 2.
% In the fprintf below, note that % and ' and \ have to be repeated twice
% to be printed and not be interpreted as control characters or format
% specifiers.
fprintf('for i=0:2:6, fprintf(''i = %i\\n''), end\n')
for i=0:2:6, fprintf('i = %i\n', i), end %i is the format specifier for integers

% If the increment value is omitted it is equal to 1.
fprintf('\nfor i= 0:6, fprintf(''i = %%i\\n'',i) end\n')
for i= 0:6, fprintf('i = %i\n',i), end

% Once the value of i exceeds the end value of 6 the loop ends
fprintf('\nfor i= 1:2:6, fprintf(''i = %%i\\n'',i) end\n')
for i=1:2:6, fprintf('i = %i\n', i), end

% the start, increment, and end values can be constants, variables, or
% epressions
fprintf('\nfor i=start:(final-start)/2:final, fprintf(''i = %%i\n'', i), end\n')
start=-10; final=-20;
fprintf('\nstart = %i, final = %i\n', start, final)
disp(' ') % blank line
for i=start:(final-start)/2:final, fprintf('i = %i\n', i), end

% If more than one statement needs to be executed for each pass through the
% loop, a multi-line for loop is used to improve readability. Noticce that
% the editor will automatically indent the lines under the for to emphasize
% the commands within the loop.
fprintf('\nThe factorials from 1 to 5.\n')
nfactorial=1; % initialize nfactorial to 1
for n=1:1:5
    nfactorial=nfactorial*n;
    fprintf('%i! = %i\n', n, nfactorial)
end

% forloops can be nested inside each other In this case for each value of
% the outer loop the inner loop cycles through all its values.
fprintf('\nNested for loops.\n')
for OuterLoop=1:1:3
    for InnerLoop=10:10:40
        fprintf('OuterLoop = %i, Inner Loop = %i\n', OuterLoop, InnerLoop)
    end
end


