% klasseopageve 3: Celle
%% 3.2 Celler

%Lav et script kaldet orakel.Lav en celle variabel med:3 navne i den f�rste
%kolonne 3 adjektiver (s�d/smart/blond etc.) i den anden
%a = cell(2,3);
pt={'Anne','s�d';'Simone','smart';'Alma','blond'}

% v�lg to tilf�ldige heltal mellem 1 og 3
s= pt{2}

%Vis en s�tning p� formen:[navn] er [adjektiv]
for i= 1:3
k = sprintf('%s er %s', pt{i,:})
end


