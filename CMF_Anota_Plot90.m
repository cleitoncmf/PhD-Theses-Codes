%% Fun��o para escrever as frequ�ncias em posi��s espec�ficas
%
% As entradas ser�o pares [x y] com a posi��o do texto
%
function CMF_Anota_Plot90(handleGCA,varargin)


varargin{1}(2)


for k=1:nargin-1
    text(handleGCA, varargin{k}(1),varargin{k}(2),strcat(num2str(varargin{k}(1)),' Hz'),'Rotation',90,'VerticalAlignment','bottom', ...
                             'FontSize', 16,'Interpreter','latex','Color','r');       
    
end

                       