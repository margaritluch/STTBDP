%% Cell Arrays
% Initialisering
a=cell(3,10)
% Med data
pt={'Kaj',82,[122 78]}
% Tilgang til data
s=pt{3}(1)
pt{2}=88;
n=pt{1}

%% Structs
s.navn = 'Jack Bauer';
s.alder = 34;
s.score = [95 98 97];

ppl=struct('name', {'John','Mary','Leo'}, ...
           'age',{32,27,18}, ...
           'childAge',{[2;4],1,[]})
       
person = ppl(2)
person.name
ppl(1).age