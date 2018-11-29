% Alunos: Andr�, Karin e Simon
function [modSala, modX, modY] = atualizaAmbiente(sala, acao, x, y)

global parede;
global resplendor;

modSala = sala;

modX = x;
modY = y;

if acao == 5 % coletar ouro
  modSala(x, y) = 0; %estado 0 = limpo
  %retorna as posi��es x e y
  modX = x;
  modY = y;
  
  modSala = removeResplendor(modSala,x,y); % tem q ver se ta passando o xy corretamtne
  
  % tem q add resplendor se ainda tiver ouro adjacente
  
  if temOuroAdjacente(modSala,x,y)
    modSala(x,y) = resplendor;
  endif
  
else
  switch acao
    case 1 %a��o 1 -> acima
      if x == 2  %controla se est� na primeira linha
        modX = x;
        modY = y;
      else
        modX = x-1;
        modY = y;
      end
    case 2 %a��o 2 -> abaixo
      if x == 5  %controla se est� na �ltima linha
        modX = x;
        modY = y;
      else
        modX = x+1;
        modY = y;
      end
    case 3 %a��o 3 -> esquerda
      if y == 2  %controla se est� na primeira coluna
        modX = x;
        modY = y;
      else
        modX = x;
        modY = y-1;
      end
    case 4 %a��o 4 -> direita
      if y == 5  %controla se est� na �ltima coluna
        modX = x;
        modY = y;
      else
        modX = x;
        modY = y+1;
      end
    case 7 %a��o 7 -> acima-esquerda
      if sala(x-1,y-1) == parede %controla se n�o � parede o destino
        modX = x;
        modY = y;
      else
        modX = x-1;
        modY = y-1;
      end
    case 8 %a��o 8 -> acima-direita
      if sala(x-1,y+1) == parede %controla se n�o � parede o destino
        modX = x;
        modY = y;
      else
        modX = x-1;
        modY = y+1;
      end
    case 9 %a��o 9 -> abaixo-esquerda
      if sala(x+1,y-1) == parede %controla se n�o � parede o destino
        modX = x;
        modY = y;
      else
        modX = x+1;
        modY = y-1;
      end
    case 10 %a��o 10 -> abaixo-direita
      if sala(x+1,y+1) == parede %controla se n�o � parede o destino
        modX = x;
        modY = y;
      else
        modX = x+1;
        modY = y+1;
      end
  end
end
end