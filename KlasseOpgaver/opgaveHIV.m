%Opgave 3.3 HIV Data

%%
HivBaseData = readtable('HIVbasedata.csv');
HivTreatment = readtable('HIVtreatment.csv');
Tboth = join(HivBaseData,HivTreatment);

%Dernæst skal I sortere data efter CPR nummer (sortrows), og vise de første 5 rækker af datasættet.

sortTable=sortrows(Tboth,'CPR');
sortTable(1:5,:)


%group2patients = sortrows(Tboth,'group',2)
%s = width(group2patients)

patientsingroup2 = sum(sortTable.group==2);
patientsingroup1 = sum(sortTable.group==1);

firstgrouppeople =sortTable(sortTable.group==1);
secondgrouppeople = sortTable(sortTable.group==2);

meanagefirstgroup = median(firstgrouppeople.age);
meanagesecondgroup = median(secondgrouppeople.age);

numberofwomeninfirstgroup = sum(firstgrouppeople.sex==1)
numberofmeninsecondgroup = sum(secondgrouppeople.sex==2)

%people =sortTable.group==1;
%firstgrouptable = sortTable(people,:)



