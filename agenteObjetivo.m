% Alunos: Andr�, Karin e Simon

%acoesAg= {'acima', 'abaixo', 'esquerda', 'direita', 'coletar', 'NOOP'}; %---a��es do agente---
%            1         2          3           4          5        6     
%                                                                NOOP => 1:sujo 0:limpo

function acao = agenteObjetivo(percepcao, ObjObtido)
  if ObjObtido == 0 % ta tudo limpo
    acao = 6
  elseif percepcao.estado == 2, % ta sujo
    acao = 5;      
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