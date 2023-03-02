% Tutorial_05_2
% Author: John Wadach
% Assisted By: no one

%Program description:
% The purpose of this program is to demonstrate how relational and logical
% operators can be used with vectors.

clc
clear

% Output of the title and author to the command window
fprintf('Output for Tutorial_05_2 written by John Wadach.\n\n')

%Relational Operator Heading and operations
fprintf('Relation Operators are applied element by element to a vector\n\n')
x=1:5;
fprintf('      x = i% %i %i %i %i %i\n',x)
fprintf('x == 3  = i% %i %i %i %i %i\n',x==3)
fprintf('x ~= 3  = i% %i %i %i %i %i\n',x~=3)
fprintf('x  > 3  = i% %i %i %i %i %i\n',x>3)
fprintf('x  < 3  = i% %i %i %i %i %i\n\n',x<3)

fprintf('Relational Operators can be applied to vectors of the same length\n\n')
A = [2 9 4 0 6];
B = [0 9 7 0 5];
fprintf('     A  = i% %i %i %i %i %i\n',A)
fprintf('     B  = i% %i %i %i %i %i\n',B)
fprintf('A == B  = i% %i %i %i %i %i\n',A == B)
fprintf('A ~= B  = i% %i %i %i %i %i\n',A ~= B)
fprintf('A  > B  = i% %i %i %i %i %i\n',A > B)
fprintf('A  < B  = i% %i %i %i %i %i\n',A < B)

% Logical Operator Heading and operations
fprintf('     A  = i% %i %i %i %i %i\n',A)
fprintf('     B  = i% %i %i %i %i %i\n',B)
fprintf('A & B  = i% %i %i %i %i %i\n',A & B)
fprintf('A | B  = i% %i %i %i %i %i\n',A | B)
fprintf('~ B  = i% %i %i %i %i %i\n', ~ B)
