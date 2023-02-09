% Filename: Tutorial_02_7
% Auhtor: John Wadach
% Assisted by: no one

% Program description: 
% The purpose of this program is to demonstrate the use of relational 
% and logical operators

clc
clear

fprintf('Output for Tutorial_02_7 written by Corey Carney.\n\n')

% The result of a relational operation is either a 0(false) or 1(two)

fprintf('3 > 2 = %g\n\n', 3>2)
fprintf('2 > 3 = %g\n\n', 2>3)
fprintf('-4 <= -3 = %g\n\n', -4 <= -3)
fprintf('1 < 1 = %g\n\n', 1 < 1)
fprintf('2 ~= 2 = %g\n\n', 2 ~= 2) % ~= test for inequality
fprintf('3 == 3 = %g\n\n', 3 == 3) % == test for equality
fprintf('0 < 0.5 = %g\n\n', 0 < 0.5)
fprintf('0.5 < 1 = %g\n\n', 0.5 < 1)
% In the next example 0 < 0.5 is executed first resulting in a value of 
% 1(true). Then the test of 1<1 is executed resulting in a 0(false).
fprintf('0 < 0.5 < 1 = %g (looks like it should be true) \n\n', (0 < 0.5) < 1)

% Logical Operators link relational operators with either &(and), |(or), 
% and ~(not), and xor(exclusive or) operators
% The following example demonstrates how to properly perform the previous
% test. Note the use of the elipsis (...) at the end of the line which
% allows a command to be continued on the next line

fprintf('0 < 0.5 & 0.5 < 1 = %g (The AND operator solves the problem)\n\n\n',...
    0<0.5 & 0.5<1)

% Truth tables for AND(&), OR(|), NOT(~), EXCLUSIVE OR(xor)
A = [0 0 1 1]; B=[0 1 0 1]; % define row vectors
AandB=A&B; AnandB=~(A&B); AorB=A|B; AnorB=~(A|B);
AxorB=xor(A,B); AxnorB=~(xor(A,B));

% Put the values in a table for display
% The transpose operator (') converts row vectors into column vectors
table=[A' B' AandB' AnandB' AorB' AnorB' AxorB' AxnorB'];
disp('Truth table for Vectors A and B') % table title
disp(' ')
% Adjust the spacing in the next line to align columns
disp('     A     B  AandB AnandB AorB  AnorB AxorB AxnorB') % column headings
disp(table) % column vector numerical values

