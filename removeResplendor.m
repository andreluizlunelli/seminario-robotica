% Alunos: Andr�, Karin e Simon
% a celula atual j,i � a celula que acabou de ser coletado o ouro, entao, caso n�o seja parede ou tenha ouro adjacente, deve-se remover o resplendor
function sala = removeResplendor(sala, j,i)
  
  global resplendor;
  global celulaVazia;
  global parede;
  global ouro;
  
  if !temOuroAdjacente(sala,  j-1,i-1) && sala(j-1,i-1) != parede && sala(j-1,i-1) != ouro
    sala(j-1,i-1) = celulaVazia;
  endif
  if !temOuroAdjacente(sala,  j-1,i) && sala(j-1,i) != parede && sala(j-1,i) != ouro
    sala(j-1,i) = celulaVazia;
  endif
  if !temOuroAdjacente(sala,  j-1,i+1) && sala(j-1,i+1) != parede && sala(j-1,i+1) != ouro
    sala(j-1,i+1) = celulaVazia;
  endif
  if !temOuroAdjacente(sala,  j,i-1) && sala(j,i-1) != parede && sala(j,i-1) != ouro
    sala(j,i-1) = celulaVazia;
  endif
  if !temOuroAdjacente(sala,  j,i+1) && sala(j,i+1) != parede && sala(j,i+1) != ouro
    sala(j,i+1) = celulaVazia;
  endif
  if !temOuroAdjacente(sala,  j+1,i-1) && sala(j+1,i-1) != parede && sala(j+1,i-1) != ouro
    sala(j+1,i-1) = celulaVazia;
  endif
  if !temOuroAdjacente(sala,  j+1,i) && sala(j+1,i) != parede && sala(j+1,i) != ouro
    sala(j+1,i) = celulaVazia;
  endif
  if !temOuroAdjacente(sala,  j+1,i+1) && sala(j+1,i+1) != parede && sala(j+1,i+1) != ouro
    sala(j+1,i+1) = celulaVazia;
  endif      
    
endfunction
