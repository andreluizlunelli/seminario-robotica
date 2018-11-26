% Alunos: André, Karin e Simon
% a celula atual j,i é a celula que contem ouro
function sala = geraResplendor(sala,j,i)
  global parede;
  global ouro;
  global resplendor;
  global celulaVazia;
  
  adjacentes(1) = sala(j-1,i-1);
  adjacentes(2) = sala(j-1,i);
  adjacentes(3) = sala(j-1,i+1);
  adjacentes(4) = sala(j,i-1);
  adjacentes(5) = sala(j,i+1);
  adjacentes(6) = sala(j+1,i-1);
  adjacentes(7) = sala(j+1,i);
  adjacentes(8) = sala(j+1,i+1);
  
  for k=1:size(adjacentes,2);
    celulaDesconhecida = adjacentes(k);
    if (celulaDesconhecida == celulaVazia)
      adjacentes(k) = resplendor;
    endif        
  endfor     
  
  sala(j-1,i-1) = adjacentes(1);
  sala(j-1,i) = adjacentes(2);
  sala(j-1,i+1) = adjacentes(3);
  sala(j,i-1) = adjacentes(4);
  sala(j,i+1) = adjacentes(5);
  sala(j+1,i-1) = adjacentes(6);
  sala(j+1,i) = adjacentes(7);
  sala(j+1,i+1) = adjacentes(8);  
  
endfunction
