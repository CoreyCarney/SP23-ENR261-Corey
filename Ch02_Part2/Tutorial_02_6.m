% Filename: Tutorial_02_6
% Auhtor: John Wadach
% Assisted by: no one

% Program description:
% the purpose of this program is to demonstrate how for loops can be
% replaced with vectorized formulas and to observe the amount of processor
% time required to process both methods.

%clear command window and all vars
clc
clear

fprintf('Output for Tutorial_02_6 written by Corey Carney. \n\n')

% Using a for loop to sum all the inverse of the integers from 1 to
% 1,000,000. The tic and toc commands measure the processing time.
tic % starts the timing stop watch

SumN=0; % initialize the SumN
for N=1:1000000
    SumN=SumN+ 1/N; % be sure to remember the semicolon here
end
fprintf('Sum of 1/N with N = 1 to 1,000,000 using a for loop = %g\n\n', SumN)

toc % stops the stop watch and outputs the elapsed time since the tic

% Using a vector to sum all the inverse of the integers from 1 to
% 1,000,000. The tic and toc commands measure the processing time

tic % starts the timing stop watch

n= 1:1000000; % defines the vector of values from 1 to 1 million
sum_n=sum(1./n); % Computes the sum using the built in vectorized function sum
fprintf('Sum of 1/N with N = 1 to 1,000,000 using a vector = %g\n\n', sum_n)

toc % stops the watch

% Computing the sum of the series sum = 1/1 - 1/2 + 1/3 - 1/4+ 1/5 +...

clear

%Using a for loop to sum the terms
SumN=0; % initialize the sumn
sign = -1; % variable used to assign the sign of a term
for N=1:1000000
    sign= -1*sign;
    SumN=SumN + sign*(1/N); % don't forget semicolon here
end
fprintf('\n\nSum of (+/-)*(1/n) with n = 1 to 1,000,000 using a vector = %g\n\n', SumN)

toc

clear

% computing the sum of the taylor series for 
% sin(x)= 1-x^3/3! + x^5/5! + ...

% Using for a for loop to sum the terms

x = pi/6; %angle in radians

tic

TaylorSin=0; % initialize the Taylor sum
sign = -1; % variable used to assign the sign of a term 
for N=1:2:99999 % will sum the first 500 terms in the series
    sign = -1*sign;
    TaylorSin=TaylorSin+(sign*x^N)/factorial(N);
end
fprintf('\n\nTaylorSin(%g) with 500 terms using a for loop = %g\n\n', x,TaylorSin)

toc

% using vector to sum the terms
n=1:4:99997; % defines the vector with every other odd value til 99997
% The following expression co,putes the sum of each value in the vector and
% a value two greater than each term
TaylorSin=sum((x.^n)./factorial(n)-(x.^(n+2))./factorial(n+2));
fprintf('\n\nTaylorSin(%g) with 500 terms using a vector = %g\n\n', x,TaylorSin)

toc

% prints the conclusion that the vector approach is much faster for all but
% the simplest operations.

fprintf('\n\nConclusion: ')
fprintf('Vectors are faster than for loops for all but the simplest operations.\n\n')




