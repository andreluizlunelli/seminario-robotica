% Alunos: André, Karin e Simon
% Agente buscador de ouro 

%acoesAg= {'acima', 'abaixo', 'esquerda', 'direita', 'coletar', 'NOOP', 'acima-esquerda', 'acima-direita', 'abaixo-esquerda', 'abaixo-direita'};
%            1         2          3           4          5        6             7                 8                9                 10
%                                                                NOOP => 1:sujo 0:limpo

function acao = agenteBuscaOuro(percepcao, ObjObtido, sala, j, i)
  
  global ouro;
  global resplendor;
  
  if ObjObtido == 0 % pegou todos ouro
    acao = 6
  elseif percepcao.estado == ouro, % tem ouro
    acao = 5;      
  elseif percepcao.estado == resplendor, % tem resplendor, adjacente contem ouro
    if sala(j-1,i-1) == ouro
      acao = 7; % acima-esquerda
    elseif sala(j-1,i) == ouro
      acao = 1; % acima          
    elseif sala(j-1,i+1) == ouro
      acao = 8; % acima-direita          
    elseif sala(j,i-1) == ouro
      acao = 3; % esquerda          
    elseif sala(j,i+1) == ouro
      acao = 4; % direita          
    elseif sala(j+1,i-1) == ouro
      acao = 9; % abaixo-esquerda          
    elseif sala(j+1,i) == ouro
      acao = 2; % abaixo          
    elseif sala(j+1,i+1) == ouro
      acao = 10; % abaixo-direita      
    else 
      disp('sentiu resplendor sem ter ouro');
    endif    
  else
    b = 1;
    while b
      r = randi(4,1,4);
      if (r(1) == 1)
        acao = 1;
        b = false;
      elseif (r(2) == 2)  
        acao = 2;
        b = false;
      elseif (r(3) == 3)
        acao = 3;
        b = false;
      elseif (r(4) == 4)
        acao = 4;
        b = false;
      endif  
    endwhile    
  endif
end