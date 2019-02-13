% klasseopageve 3: Celle
%% 3.2 Celler

%Lav et script kaldet orakel.Lav en celle variabel med:3 navne i den første
%kolonne 3 adjektiver (sød/smart/blond etc.) i den anden
%a = cell(2,3);
pt={'Anne','sød';'Simone','smart';'Alma','blond'}

% vælg to tilfældige heltal mellem 1 og 3
s= pt{2}

%Vis en sætning på formen:[navn] er [adjektiv]
for i= 1:3
k = sprintf('%s er %s', pt{i,:})
end


