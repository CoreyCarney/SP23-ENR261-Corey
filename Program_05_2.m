% Program_05_2
% Author: Corey
% Assisted By: no one

% Program Description:
% This program creates 10,000 random resistors with a normal distribution
% and mean of 100 ohms and standard deviation of 15 ohms.
Resistors = 100 + 15*randn(1,10000);
% Perform the following operations with the resistor data using logical
% vectors where appropriate.
% % Output of the title and author to the command window
fprintf('Output for Program_5_2 written by Corey.\n\n')

% 1. Output the total number of resistors created along with their actual 
%    mean and standard deviation as they will differ slightly from the 
%    values given.
fprintf('A total of 10000 resistors were created.\n\n')
Rmean = mean(Resistors);
fprintf('Actual Mean = %g ohms', Rmean)
Rstd = std(Resistors);
fprintf('\nActual standard deviation = %g ohms', Rstd)

% 2. Output the percentage of resistor with values > mean and < mean 
Rgreaterm = Resistors > Rmean;
Percentgm = sum(Rgreaterm)/100;% proportion of resistors in this category * 100
% I used /100 instead of /10000 * 100 because it's neater
Rlessm = Resistors < Rmean;
Percentlm = sum(Rlessm)/100;
fprintf('\n\nPercentage of Resistors > mean = %g', Percentgm)
fprintf('\nPercentage of Resistors < mean = %g', Percentlm)

% 3. Output the percentage of resistors within +/- 1 Standard Deviation 
%    of the mean.
Within1std = abs(Resistors-Rmean) <= Rstd; % logical vector for all resistors 
% within one standard deviation of the mean
Within2std = abs(Resistors-Rmean) <= 2*Rstd; % logical vector for all resistors 
% within 2 standard deviations of the mean
Within3std = abs(Resistors-Rmean) <= 3*Rstd; % logical vector for all resistors 
% within 3 standard deviations of the mean
Percent1std = sum(Within1std)/100; % proportion of resistors in this category * 100
Percent2std = sum(Within2std)/100;
Percent3std = sum(Within3std)/100;
fprintf('\n\nPercentage of Resistors within + or - 1 Stdev of the mean = %g', Percent1std)

% 4. Repeat step 3 for +/- 2 Standard Deviations and +/- 3 Standard
%    Deviations.
fprintf('\nPercentage of Resistors within + or - 2 Stdev of the mean = %g', Percent2std)
fprintf('\nPercentage of Resistors within + or - 3 Stdev of the mean = %g', Percent3std)

% 5. Output the resistor position numbers and the corresponding resistor 
%    values for all resistors outside of +/- 3 standard deviations of the mean
Resistors=Resistors';
fprintf('\n\nRejected Resistors: < mean-3*std or > mean+3*std\n\n')
Reject = abs(Resistors-Rmean)> 3*Rstd;
RejResistors = find(Resistors(Reject));
disp('      Resistor #    Resistor Value (Ohms)')
table = ['\t'RejResistors,       Resistors(Reject)]
disp(table)