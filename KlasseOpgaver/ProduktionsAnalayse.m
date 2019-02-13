% Lesson2_opgave 2.3 Produktionsanalyse
load Ov2_3data.mat
%% analysing days
m_day = mean(prod01)
figure(2)
plot(m_day)

%% Analyse of time
m_hour = mean(prod01,2)
figure(3)
plot(m_hour)

%% Fyraftens analyse
% den første loop tæller uger, den anden loop tæller ugedage
fyrdata = zeros(1,7)
for week = 0:3
    for day=1:7
        fyrdata(day) = fyrdata(day)+fyrdata(day)+...
            sum(prod01(16:end,week*7+day));
    end 
end
figure(4)
plot(fyrdata)