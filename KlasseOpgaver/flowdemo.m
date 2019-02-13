%% If sætning
tal = randi(10);
if tal > 5
    disp([num2str(tal) ': Den er godt nok stor!'])
end

%% If else sætning
tal = randi(10);
if tal > 5
    disp([num2str(tal) ': Den er godt nok stor!'])
else
    disp([num2str(tal) ': Den er alt for lille!'])
end

%% Elseif sætninger
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
% Dette er en meget dårlig måde at bruge sum på - den kan det hele på
% en gang - det er kun for at demonstrere. Herunder gør koden nøjagtig det
% samme med en enkelt kommando
sum(mat20x5)

%% While loops
userTarget = input('Vælg et tal mellem 1 og 100: ');
randNum = randi(100);
counts = 0;
while randNum ~= userTarget
    counts = counts + 1;
    randNum = randi(100);
end
disp(['Jeg gættede dit tal på ' num2str(counts) ' forsøg.']);