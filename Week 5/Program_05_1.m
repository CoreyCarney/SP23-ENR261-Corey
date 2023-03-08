% Program_05_1
% Author: Corey
% Assisted By: Bob
% This program will read in the original data from the Feb_6_2009 sheet
% contained in the Excel file named ClassList.xlsx .  This file contains the
% student number and number of absences recorded for each student as of Feb
% 6, 2009.
% Output of the title and author to the command window
fprintf('Output for Program_5_1 written by Corey.\n\n')
% Perform the following operations with this data:
% 1. Output the Feb 6 attendance data to the command window with a neat format.
Class_List = readmatrix('ClassList.xlsx','Range','A4:B34');
disp('Class List for February 6, 2009')
disp('      Student#    Absences')
table = Class_List;
disp(table)
% 2. Output a list of students with 1 or 2 absences in the command window
%    who will be sent warning letters.
disp('Students with 1 or 2 absences who will recieve a warning letter')
disp('      Student#    Absences')
warning = Class_List(:,2)>0 & Class_List(:,2) < 3;
table = Class_List(warning,:);
disp(table)
% 3. Output a list of students with >=3 absences in the command window
%    who will be dropped from the course .
disp('Students with >=3 absences who will recieve a drop letter')
disp('      Student#    Absences')
drop = Class_List(:,2)>=3;
table = Class_List(drop,:);
disp(table)
% 4. Remove the students with >=3 absences from the class list and output
%    this updated class list to the command window and the Feb_13_2009 sheet in
%    the ClassList.xlsx file.
BadKids = Class_List(:,2) >= 3;
Class_List(BadKids,:) = []
disp('      Student#    Absences')
table = Class_List;
disp(table)
writematrix(Class_List,'ClassList.xlsx','Sheet', 'Feb_13_2009','Range', 'A4:B24')