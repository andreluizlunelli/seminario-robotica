% Alunos: André, Karin e Simon
% chamado pela função removeResplendor
% pesquisar se nao adjacencias de j,i contem ouro, exceto, na celula a,b
function b = temOuroAdjacente(sala, j,i)   
  
  global ouro;
  
  sizeSala = size(sala,1);
  
  if j-1 != 0 && i-1 != 0 && j+1<=sizeSala && i+1<=sizeSala
    if sala(j-1,i-1) == ouro || sala(j-1,i) == ouro || sala(j-1,i+1) == ouro
      b = 1;
      return;
    else
      b = 0;
    endif   
  endif   
  if i-1 != 0
    if sala(j,i-1) == ouro
      b = 1;
      return;
    else
      b = 0;
    endif
  endif
  if i+1<=sizeSala
    if sala(j,i+1) == ouro
      b = 1;
      return;
    else
      b = 0;
    endif
  endif
  if j+1<=sizeSala && i-1!=0
    if sala(j+1,i-1) == ouro
      b = 1;
      return;
    else
      b = 0;
    endif
  endif
  if j+1<=sizeSala
    if sala(j+1,i) == ouro
      b = 1; % aqui tem que add alguma instrução de return
      return;
    else
      b = 0;
    endif
  endif
  if j+1<=sizeSala && i+1<=sizeSala
    if sala(j+1,i+1) == ouro
      b = 1;
      return;
    else
      b = 0;
    endif
  else 
    b = 0;
  endif
  
endfunction
