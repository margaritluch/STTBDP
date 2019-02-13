% Lesson1_Opgaver.m

% mit f�rste MATLAB script

%% �velse 1.1 - Scripts
disp('Hello World')
disp('Jeg vil laere Matlab')


%% �velse 1.2 - Variabler
% lav en 6 dimensional array date og vis indholdet af arrayen
start = clock
% vis l�ngden og st�rrelsen af arrayet
length(start)
size(start)
% konverter start variablen til tekst
startString = datestr(start);
% gem start og startString i en matfil kaldet startTime
save startTime start startString

%% �velse 1.3 - Variabler
% indl�s de gemte variabler med commandoen load, clear f�rst
clear
load startTime
disp(['Jeg begyndte at  l�re Matlab',startString])

%% �velse 1.4 - Skalarer
% make a constant variable that is 5 days
k = days(5);
% beregn days om til sekunder 
tau = seconds(k);
prephours = hours(8);
secPerLesson = seconds(prephours);
courseNumber = 14;
endOfCourse = courseNumber * secPerLesson
% lav funktion af tiden t
knowledgeAtEnd = 1 -exp(-endOfCourse/tau)
% vis besked
knowledge= num2str(knowledgeAtEnd*100);
disp(['Ved slutningen af kurset, vil jeg vide',knowledge,'% af MATLAB']) 

%% �velse 1.5 - Vektor Operationer
secPerMin= 60;
secPerHour= secPerMin*60;
secPerDay = 24 *secPerHour;
secPerMonth = 30.5 *secPerDay;
secPerYear = 12* secPerMonth
% skab vektor med de ovenst�ende variabler
secondConversion =[secPerYear,secPerMonth, secPerDay,secPerHour,secPerMin,1]
currentTime = clock;
elapsedTime = currentTime-start
t = secondConversion*elapsedTime'

%% �velse 1.6 - Vektor Operationer
currentKnowledge = 1-exp(-t/tau)
disp(['Lige nu ved jeg ' num2str(currentKnowledge*100) '% af MATLAB']);

%% �velse 1.7 - Vektor Funktioner
% lav en line�r tidsvektor tVec, som har 10.000 samples mellem 0 og endOfCourse
tVec = linspace(0,endOfCourse,10000);
knowledgeVector = 1-exp(-tVec/tau);

%% �velse 1.8 - Indeksering
[val,idx]= min(abs(knowledgeVector-0.5))
halftime = tVec(idx)
disp(['Efter ' num2str(halfTime/secPerLesson) ' lektioner, vil jeg vide halvdelen af MATLAB']);


%% �velse 1.9 - Plot
figure
plot(tVec/secPerLesson,knowledgeVector);

