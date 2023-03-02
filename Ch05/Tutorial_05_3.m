% Tutorial_05_3
% Author: John Wadach
% Assisted By: no one

%Program description:
% The purpose of this program is to demonstrate how relational operators
% can be used in mathematical expressions

clc
clear
close all % closes all figure windows

% Output of the title and author to the command window
fprintf('Output for Tutorial_05_3 written by John Wadach.\n\n')

% Replacing Negatives
fpritnf('\nReplacing negatives with 0 in vector C\n\n')
C = [-4:2:4];
D = C > 0; % C > 0 returns 1 only for elements of C that are >0

fprintf('           C = %2i %2i %2i %2i %2i\n', C)
fprintf('D = (C > 0)  = %2i %2i %2i %2i %2i\n', D)

% element by element product (0 values in D will transform negatives in C to 0)
C = C .* D;
fprintf('C = (C >* D)  = %i\n', C .*D)

% Avoiding division by 0
clear % clears variables
fprintf('\nAvoiding Division by 0\n\n')
x = [0 4 0 8 0];
y = 1./x; % creates divide by zero for first, third and fifth elements :(

fprintf('This operation creates a divide by zero\n')
fprintf('           x = %5i \t %5i \t %5i \t %5i \t %5i\n' ,x)
fprintf('y = (1 ./ x) = %5.3f \t %5.3f \t %5.3f \t %5.3f \t %5.3f \t %5.3f\n\n', y)

% replace 0 elements with eps eps is the smallest incre,emt in matlab
fprintf('Replace the 0 elements in x with eps(the smallest increment in Matlab)\n\n')
fprintf('            eps = %9.3e\n\n',eps) % outputs eps

% z = x ==0 e    uals 1 when x = 0
z = (x == 0);
fprintf('           x = %9.3e %9.3e %9.3e %9.3e %9.3e\n',x)
fprintf('z = (x == 0) = %9.3e %9.3e %9.3e %9.3e %9.3e\n',z)




fprintf('z = z.*eps = %9.3e %9.3e %9.3e %9.3e %9.3e\n',z)