%Filename Tutorial_01_3
%Author: Corey Carney
%Assisted By: no one

% Program Description:
% The purpose of this program is to demonstrate the power of Matlab
% in performing vector and matrix operations.

% Clear the command window and all variables
clc % clears the contents of the command window
clear % clears all defined variables from the Matlab workspace

% Output of the title and author to the command window.
fprintf('Output for Tutorial_01_3 written by Corey Carney. \n\n')

% Variable definitions
RowVector=[1 2 3 4 5 ] % row vector variable
MatrixA=[1 2 3 4; 5 6 7 8; 9 10 11 12] % matrix variable

%The old way of finding the average value of a row vctor.
SumRow=0 % Initializes the sum to 0
for col=1:1:5 % repeats the loop starting with col=1, increments by 1
              % ends with col=5
    SumRow=SumRow+RowVector(col) % adds the current vector value to sum
end
OldRowAverage=SumRow/5 % Computes the average

%The modern way of finding a row average
SizeRowVector=size(RowVector) % The size() returns # of rows and cols
% The sum() function computes the sum of all elements in RowVector
ModernRowAverage=sum(RowVector)/SizeRowVector(2)

% The old wat of squaring each element of a matrix
for col=1:1:4 % accesses each column in MatrixA
    for row=1:1:3 %accesses each row in MatrixA
        MatrixOld(row,col)=MatrixA(row,col)^2; %squares each element
    end
end

% output the matrix
MatrixOld

% The modern way of squaring each element in a matrix.
% The .^ operator is used to denote that each element is to be squared as
% opposed to squaring the entire Matrix in a single operation.
MatrixModern=MatrixA.^2
