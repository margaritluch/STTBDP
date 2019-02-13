% Klasseopagve 3: Polynomisk flitning

%% Opgave 3.1
%Evaluer y=x2 for x=-4:0.1:4

x= -4:0.1:4
y = x.^2

% Tilføj tilfældig, normalfordelt støj til disse samples.Brug randn
y = y+randn(size(y))
plot(x,y,'.')