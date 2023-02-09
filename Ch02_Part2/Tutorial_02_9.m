% Filename: Tutorial_02_9
% Auhtor: John Wadach
% Assisted by: no one

% Program description:
% the purpose of this program is to demnstrate the use of
% if-elseif-else and switch constructs

%clear command window and all vars
clc
clear

fprintf('Output for Tutorial_02_9 written by Corey Carney. \n\n')
% The if-elseif-else alows for multiple tests
% Execution is transferred out of this construct after the first
% true test is encountered.

NumericalGrade = input('Enter a numerical grade (0 to 100): ');
if NumericalGrade >= 90
    LetterGrade = 'A'; % a character value must be enclosed in apostrophes
elseif NumericalGrade >= 80
    LetterGrade = 'B';
elseif NumericalGrade >= 70
    LetterGrade = 'C';
elseif NumericalGrade >= 60
    LetterGrade = 'D';
else
    LetterGrade = 'F';
end
% The %s is the format specifier for strings (characters)
fprintf('\nYour letter grade using if-elseif-else is %s\n', LetterGrade)

% if multiple if statements were used the only two possible grades are D or
% F because each if statement is executed. This results in either a D
% if NumericalGrade>=60 or F if NumericalGrade <60 as they are the 
% last two tests performed.
if NumericalGrade >=90
    LetterGrade = 'A';
end
if NumericalGrade >=80
    LetterGrade = 'B';
end
if NumericalGrade >=70
    LetterGrade = 'C';
end
if NumericalGrade >=60
    LetterGrade = 'D';
end
if NumericalGrade <60
    LetterGrade = 'F';
end
 fprintf('\nYour letter grade using multiple if statements is %s\n\n', LetterGrade)

% The switch-case-otherwise tests for equality with a series of cases
% The 's' specifier allows the user to input the grade without apostrophes
LetterGrade=input('Enter a letter grade (A,B,C,D,F): ','s');

switch LetterGrade % the case that matches LetterGrade is executed
    case {'A','a'} %this format allows either A or a as entries
        fprintf('\nYour numerical grade is >= 90\n\n')
    case 'B'
        fprintf('\nYour numerical grade is >= 80\n\n')

    case 'C'
        fprintf('\nYour numerical grade is >= 70\n\n')
    case 'D'
        fprintf('\nYour numerical grade is >= 60\n\n')
    case 'F'
        fprintf('\nYour numerical grade is < 60\n\n')
    otherwise
        fprintf('\nYou have not input a valid letter grade.\n\n')
end

