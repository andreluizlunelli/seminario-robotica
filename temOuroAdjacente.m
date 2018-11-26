% Alunos: André, Karin e Simon
% chamado pela função removeResplendor
% pesquisar se nao adjacencias de j,i contem ouro, exceto, na celula a,b
function b = temOuroAdjacente(sala, j,i, a,b)
  
  if j-1 != a && i-1 != b && 
  
  
  adjacentes(1) = sala(j-1,i-1);
  adjacentes(2) = sala(j-1,i);
  adjacentes(3) = sala(j-1,i+1);
  adjacentes(4) = sala(j,i-1);
  adjacentes(5) = sala(j,i+1);
  adjacentes(6) = sala(j+1,i-1);
  adjacentes(7) = sala(j+1,i);
  adjacentes(8) = sala(j+1,i+1);

endfunction
