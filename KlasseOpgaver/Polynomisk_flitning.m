% Klasseopagve 3: Polynomisk flitning

%% Opgave 3.1
%Evaluer y=x2 for x=-4:0.1:4

x= -4:0.1:4
y = x.^2

% Tilf�j tilf�ldig, normalfordelt st�j til disse samples.Brug randn
y = y+randn(size(y))
plot(x,y,'.')