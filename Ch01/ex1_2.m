%Filename ex1.2
%Author Corey Carney
%Assisted By: no one


%Clear the command window of all variables
clc % clc clears the contents of the command window
clear % clear, clears all defined variables from the matlab workspace

[x y] = meshgrid(-8:.5:8);
r = sqrt(x.^2+y.^2)+ eps;
z = sin(r) ./r;
mesh(z);

surf(z), shading flat

[x y] = meshgrid(-8:.5:8);
r = sqrt(x.^2+y.^2)+ eps;
for n= -3:.05:4;
    z = cos(r.*n) ./r;
surf(z),view (-37,38), axis([0,40,0,40,-4,4]);
pause(.1)
end