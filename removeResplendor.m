% Alunos: André, Karin e Simon
% a celula atual j,i é a celula que acabou de ser coletado o ouro, entao, caso não seja parede ou tenha ouro adjacente, deve-se remover o resplendor
function sala = removeResplendor(sala, j,i)
  
  global resplendor;
  global celulaVazia;
  
  if temOuroAdjacente(sala,      j-1,i-1,  j,i) == 0
    sala(j,i) = celulaVazia;
  elseif temOuroAdjacente(sala,  j-1,i,    j,i) == 0
    sala(j,i) = celulaVazia;
  elseif temOuroAdjacente(sala,  j-1,i+1,  j,i) == 0
    sala(j,i) = celulaVazia;
  elseif temOuroAdjacente(sala,  j,i-1,    j,i) == 0
    sala(j,i) = celulaVazia;
  elseif temOuroAdjacente(sala,  j,i+1,    j,i) == 0
    sala(j,i) = celulaVazia;
  elseif temOuroAdjacente(sala,  j+1,i-1,  j,i) == 0
    sala(j,i) = celulaVazia;
  elseif temOuroAdjacente(sala,  j+1,i,    j,i) == 0
    sala(j,i) = celulaVazia;
  elseif temOuroAdjacente(sala,  j+1,i+1,  j,i) == 0
    sala(j,i) = celulaVazia;
  endif      
    
endfunction
