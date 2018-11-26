% Alunos: Andr�, Karin e Simon
clear all;clc; close all;

global celulaVazia = 0;
global dim = 6;
global parede = 1; 
global ouro = 2; 
global resplendor = 3;
global acoesAg = {'acima', 'abaixo', 'esquerda', 'direita', 'coletar'};
%                    1         2          3           4          5

sala = geraAmbiente02();
mostraAmbiente(sala);

hold on;

_pX = 4;
_pY = 2;
posicaoRobo(_pX, _pY);
hold off;
pause(1);

estado = sala(_pX, _pY);
percepcao = struct('x', _pX, 'y', _pY, 'estado', estado);
contador = 0;

b = 1
while b
    estado = sala(percepcao.x, percepcao.y);
    percepcao.estado = estado;       
    
    acao = agenteBuscaOuro(percepcao, checkObj(sala), sala, percepcao.x, percepcao.y); % 1 ta sujo
    
    if (acao == 5) 
      contador = contador + 1;
    endif
    
    %chama a fun��o atualizaAmbiente para atualizar a a��o realizada
    [modSala, modX, modY] = atualizaAmbiente(sala, acao, percepcao.x, percepcao.y);
        
    %Mostra na tela as a��es escolhidas e percep��es (veja as fun��es 'disp' e 'num2str')        
    
    %mostra o ambiente atualizado
    mostraAmbiente(modSala);
    hold on;
    %posiciona o aspirador no ambiente atualizado
    posicaoRobo(percepcao.x, percepcao.y)
    hold off;
    pause(0.1);

    %atualiza a percep��o e o estado depois de concluir a a��o    
    sala = modSala;
    percepcao.x = modX;
    percepcao.y = modY;        
    
    if (acao == 6)
      b = 0;
    endif
end