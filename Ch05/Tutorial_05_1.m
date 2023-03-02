% Tutorial_05_1
% Author: John Wadach
% Assisted By: no one

%Program description:
% The purpose of this program is to review how relational (>, <, ==, etc.)
% and logical operators work. The use of operands other than 0 and %i can
% be used with logical operators.

clc
clear

% Output of the title and author to the command window
fprintf('Output for Tutorial_5_01 written by John Wadach.\n\n')

% Heading for relational operators example
fprintf('Relational Operators return either a 0false or 1 true.\n\n')

% create a scalar named x
x=5;
fprintf('x = %i\n', x>4)
% The result of the following operators is 0 or 1
fprintf('x > 4 = %i\n', x>4)
fprintf('x < 4 = %i\n', x<4)
fprintf('x == 4 = %i\n', x==4)
fprintf('x == 5 = %i\n', x==5)
fprintf('x ~= 5 = %i\n', x~=5)

% Heading for logical operators examples
fprintf('\n\nLogical Operators return either a 0 false or 1 true.\n\n')

% The AND(&) Operator
fprintf('Both operands must be nonzero for an AND to be true\n')
fprintf('-5 & 1 = %i\n', -5&1)
fprintf('0.5 & 0 = %i\n', 0.5 &0)
fprintf('0 & 0 = %i\n', 0&0)

% The OR Operator
fprintf('-10 | 3.5 = i%\n',-10|3.5)
fprintf('1.5 | 0 = i%\n',1.5|0)
fprintf('0 | 0 = i%\n',0|0)

% The NOT Operator
fprintf('\nThe NOT operator inverts a nonzero operand into 0 \n')
fprintf('~7 = %i\n',~7)
fprintf('~0 = %i\n',~0)
