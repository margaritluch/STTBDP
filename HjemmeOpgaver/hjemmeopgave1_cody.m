%Cody opgaver from Lesson1
%% defining string vector
eVec = 'Hello';


%%defining a 5x3 matix with random characters in interval from(-3,3)
fMat = randi([-3,3],5,3);

%% Scalar Equation
a = 10;
b = 2.5*10^23;
c = exp(2*pi/3);
z = (log(c/b^a)*sin(a*pi/3))/abs(c-a)

%% Vector Equations//transpose of aVec
aVec = [3.14 15 9 26]
bVec = [2.71;8;28;182]
yVec = sqrt((aVec').^2 +bVec.^2)

%%Calculate yMat
aVec = [3.14 15 9 26]
bVec = [2.71;8;28;182]
yMat = bVec*aVec

%% make a 6x6 matrix and replace all the values bigger than 20 with 0
m = magic(6)
m(m>=20) = 0

%% a vector that starts from 1 ends in 20 and increases by 1
lin = 1:20
lin(2:2:20)=lin(2:2:20)*-1

%%
  dVec = logspace(0,1,101)
  
%%
  bMat = magic(9) *0
    diag(diag(bMat))=[1,2,3,4,5,4,3,2,1]

