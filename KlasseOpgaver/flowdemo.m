%% If s�tning
tal = randi(10);
if tal > 5
    disp([num2str(tal) ': Den er godt nok stor!'])
end

%% If else s�tning
tal = randi(10);
if tal > 5
    disp([num2str(tal) ': Den er godt nok stor!'])
else
    disp([num2str(tal) ': Den er alt for lille!'])
end

%% Elseif s�tninger
tal = randi(10);
if tal == 5
    disp([num2str(tal) ': Den er lige tilpas!'])
elseif tal > 5
    disp([num2str(tal) ': Den er godt nok stor!'])
else
    disp([num2str(tal) ': Den er alt for lille!'])
end

%% Switch statements
% genereates random number from 1 to 4
a=randi(4) 
switch(a)
  case 1
    disp('low');
  case {2,3}
    disp('medium');
  otherwise
    disp('high');
end
%% 
x = [12 64 24];
plottype = 'bart';

switch plottype
  case 'bar' 
    bar(x)
    title('Bar Graph')
  case {'pie','pie3'}
    pie3(x)
    title('Pie Chart')
  otherwise
    warning('Unexpected plot type. No plot created.')
end

%% For loops
mat20x5 = randi(10,20,5);
for ii = 1:size(mat20x5,2)
    disp([num2str(ii) ': ' num2str(sum(mat20x5(ii,:)))]);
end
%% NB
% Dette er en meget d�rlig m�de at bruge sum p� - den kan det hele p�
% en gang - det er kun for at demonstrere. Herunder g�r koden n�jagtig det
% samme med en enkelt kommando
sum(mat20x5)

%% While loops
userTarget = input('V�lg et tal mellem 1 og 100: ');
randNum = randi(100);
counts = 0;
while randNum ~= userTarget
    counts = counts + 1;
    randNum = randi(100);
end
disp(['Jeg g�ttede dit tal p� ' num2str(counts) ' fors�g.']);