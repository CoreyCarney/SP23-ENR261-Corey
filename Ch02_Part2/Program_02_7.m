% Filename: Program_02_7.m
% Auhtor: Corey Carney
% Assisted by: no one

% Program description:

%clear command window and all vars
clc
clear

fprintf('Output for Program_02_7 written by Corey Carney. \n\n')

% sum 333 833 500 from 1^2+2^2+3^2 ... + 1000^2
% FOR LOOP
tic % starts the timing stopwatch
Sum1f=0; % problem 1 for loop sum
for n1f=1:1000 % n1f for clarity this section is exersize 1 with the for loop
    Sum1f = Sum1f+n1f.^2;
end
fprintf('Exercise 1: \n\n')
fprintf('Sum of N^2 with N = 1 to 1000 using a for loop = %g\n\n', Sum1f)

toc % stops the watch and outputs the elapsed time since the tic

%VECTOR
tic % starts the timing stopwatch
n1v = 1:2:1001;
Sum1v= sum(n1v.^2); % computes the sum using built in vectorized function sum
fprintf('\n\n\nSum of N^2 with N = 1 to 1000 using a vector = %g\n\n', Sum1v)

toc % stops the watch and outputs the elapsed time since the tic

% sum .7849(pi/4) from 1- 1/3+1/5-1/7+1/9... -1/1003
tic % starts the timing stopwatch
Sum2f=0; % problem 2 for loop sum
sign=1;
for n2f=1:2:1000
    sign=-1*sign;
    Sum2f = Sum2f- sign*1/n2f;
end
fprintf('\n\n\nExercise 2: \n\n')
fprintf('Sum of +/-1/N with N odds from 1 to 1000 using a for loop = %g\n\n', Sum2f)

toc % stops the watch and outputs the elapsed time since the tic
tic
n2v=1:4:1000;
Sum2v= sum(1./n2v - 1./(n2v+2));
fprintf('\n\nSum of +/-1/N with N odds from 1 to 1000 using a vector = %g\n\n', Sum2v)

toc


% Sum the left hand side of the series 
% 1/(1^2+3^2) + 1/(3^2+5^2)+ 1/(5^2+7^2)... =(pi^2-8)/16 
% (sum is .1169 with 500 terms)

Sum3f=0; % problem 3 for loop sum
sign=1;
for n3f=1:4:998
    sign=-1*sign;
    Sum3f = Sum3f + 1/(n3f^2+(n3f+2)^2);
end
fprintf('\n\n\nExercise 2: \n\n')
fprintf('Sum of 1/(N^2 + (N+2)^2) N odds from 1 to 1000 using a for loop = %g\n\n', Sum3f)

toc % stops the watch and outputs the elapsed time since the tic
tic
n3v=1:4:998;
Sum3v= sum(1./(n3v.^2+(n3v+2).^2));
fprintf('\n\nSum of +/-1/N with N odds from 1 to 1000 using a vector = %g\n\n', Sum3v)

toc

% compute lnx when x=e using a taylor series forloop and vector
% SIKE!


