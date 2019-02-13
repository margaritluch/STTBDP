%Lesson2-KlasseOpgaver-sinusfunktion

%% Øvelse2.1- Funktioner
% Funktionen plotter sinuskurve mellem 0 og 2pin med frekvensen f1
% function is operating different depending on the number of inputs
function plotSin(f1,f2,)
    x=linspace(0,2*pi,round(f1*20))
    figure
    if nargin==1
    plot(x,sin(f1*x)'rs--','LineWidth',2,'MarkerFaceColor','k')
    elseif nargn ==2
          x=linspace(0,2*pi,round(f2*20))
          [X,Y]=meshgrid(x,y)
          Z = sin(f1*x)+sin(f2*y)
        disp(['2 input argumenter modtager'])
        % skal funktionen åbne en ny figur med 2 akser, placeret øverst og nederst og aktivere den øverste
        subplot(2,1,1), imagesc(x,y,Z),colorbar;
        colormap hot;
        subplot(2,1,2); surf(X,Y,Z)
    end
        
