% Alunos: André, Karin e Simon
function sala = geraAmbiente()

  global dim;
  global parede; 
  global ouro;
  global resplendor; 

  sala = (rand(dim, dim)>0.6)*0;
  sala(5,3) = ouro;
  sala(4,2) = resplendor;
  sala(4,3) = resplendor;
  sala(4,4) = resplendor;
  sala(5,2) = resplendor;
  sala(5,4) = resplendor;
  
  sala(1, :) = parede; 
  sala(end, :) = parede;
  sala(:, 1) = parede;
  sala(:, end) = parede;
  
  for j=2:dim
    for i=2:dim
      if (sala(j,i)==ouro)
        sala = geraResplendor(sala,j,i);
      endif
    endfor
  endfor

end