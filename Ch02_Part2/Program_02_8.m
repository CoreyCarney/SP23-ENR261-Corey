% Filename: Program_02_8.m
% Auhtor: Corey Carney
% Assisted by: no one

% Program description:

%clear command window and all vars
clc
clear

fprintf('Output for Program_02_8 written by Corey Carney. \n\n')

close all

fprintf('The resonant frequency = %i' , 5000)
fprintf('\n\nRLC Circut Frequency Dependance\n\n')

E = 10; % 10 volts
R=2; % resistance, 2 ohms
C=10; % capitance,10 microFarads
L=4; % inductance 4 megaHertz
w=1000:250:10000; %time vector moving in steps of 250 /s from 1k to 10k /s
I=E/sqrt(R^2+(2*pi*w*L-1/(2*pi*w*C))); % current vector

w_I= [w,I];
for w=1000:250:10000
    disp(w_I)
end