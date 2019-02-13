% STTBDP Lektion 1 - MATLAB Intro + Variabler

%% Øvelse 1.1 - Hello World
disp('Hello World!');
disp('Jeg vil lære MATLAB!');

%% Øvelse 1.2 - Hent/gem nuværende dato og tid
start=clock;
size(start)
startString=datestr(start);
save startTime start startString

%% Øvelse 1.3 - Indlæs gemte variabler og vis dem
clear
load startTime
disp(['Jeg begyndte at lære MATLAB ' startString]);

%% Øvelse 1.4 - Eksponentiel MATLAB indlæring
tau=5*60*60*24;
secPerLesson=60*60*8;
endOfCourse=14*secPerLesson;
knowledgeAtEnd=1-exp(-endOfCourse/tau);
disp(['Ved slutningen af kurset, vil jeg vide ' num2str(knowledgeAtEnd*100) '% af MATLAB'])

%% Øvelse 1.5 - Hvor mange sekunder er der gået siden start
secPerMin=60;
secPerHour=60*secPerMin;
secPerDay=24*secPerHour;
secPerMonth=30.5*secPerDay;
secPerYear=12*secPerMonth;
secondConversion=[secPerYear secPerMonth secPerDay secPerHour secPerMin 1];
currentTime=clock;
elapsedTime=currentTime-start;
t=secondConversion*elapsedTime';

%% Øvelse 1.6 - Vis dit nuværende vidensniveau
currentKnowledge=1-exp(-t/tau);
disp(['Lige nu ved jeg ' num2str(currentKnowledge*100) '% af MATLAB']);

%% Øvelse 1.7 - Beregn din læringskurve
tVec = linspace(0,endOfCourse,10000);
knowledgeVec=1-exp(-tVec/tau);

%% Øvelse 1.8 - Hvornår ved du 50% af MATLAB?
[val,idx]=min(abs(knowledgeVec-0.5));
halfTime=tVec(idx);
disp(['Efter ' num2str(halfTime/secPerLesson) ' lektioner, vil jeg vide halvdelen af MATLAB']);

%% Øvelse 1.9 - Plot din læringskurve
figure
plot(tVec/secPerLesson, knowledgeVec);