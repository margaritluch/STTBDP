%% Indl�sning af sample data
load patients
whos

%% Omdannelse fra variabler -> table
T = table(Gender,Smoker,Height,Weight);
T(1:5,:)

%% Tilf�j tilf�ldigt ID nummer
T.ID = randi(1e5,100,1);
T(1:5,:)

%% Opsummer indholdet i tabellen
summary(T)

%% Lav en ny tabel med et underindhold af den oprindelige
Tnew = T(1:5,:)

%% Vis efternavne som r�kkenavne 
T.Properties.RowNames = LastName;
T(1:5,:)

%% S�g efter patienter via deres efternavn
Tnew = T({'Smith','Johnson'},:)
Tnew = T('Johnson',{'Height','Weight'})

%% Beregn nye variabler p� basis af eksisterende data, her BMI
T.BMI = (T.Weight*0.453592)./(T.Height*0.0254).^2;
T(1:5,:)

%% Sorter data
T = sortrows(T,'RowNames');
T(1:5,:)

%% Opdel data - her v�lges kun ikke-rygere
nonsmokers = T;
toDelete = (nonsmokers.Smoker == true);
nonsmokers(toDelete,:) = [];
nonsmokers.Smoker = [];

%% Kombiner to datas�t
% Dan et datas�t med �jenfarve
Teyecolor = T(:,{'ID'});
EyeColors = {'Blue','Green','Gray','Brown'};
RandomEyeColor = randi(4,100,1);
Teyecolor.EyeColor = {EyeColors{RandomEyeColor}}'
Tboth = join(T,Teyecolor);
Tboth(1:5,:)

%% Skriv data til fil
writetable(T,'allPatientsBMI.csv');