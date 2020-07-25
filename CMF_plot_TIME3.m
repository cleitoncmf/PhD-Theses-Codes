%% Fun��o para plotar 3 gr�ficos no dom�nio do tempo
% Haver� 3 gr�ficos em totem
% Usar n�mero de entradas m�ltiplo de 3
% Em cada grupo de 3:
% - primeiro: vetor X
% - segundo: vetor Y
% - terceiro: strig com cor/tipo de tra�o do gr�fico
function [H,gca1,gca2,gca3] = CMF_plot_TIME3(varargin)


if ~mod(nargin,3)
    
    H = figure;
    fator = 0.7/0.3;
    set(H,'Position',[50 100 1280 600*fator]);
    
    font = 28;
    
    
    % Gr�fico superior
    axes('Position',[0.09 0.7 0.89 0.29]);
    
    
    
    % Gr�fico do meio
    axes('Position',[0.09 0.4 0.89 0.29]);
    
    
    
    % Gr�fico inferior
    axes('Position',[0.09 0.1 0.89 0.29]);
    
    
else
    error('Defina trios x, y, string ');
    
end
