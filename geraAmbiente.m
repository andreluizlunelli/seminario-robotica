% Alunos: André, Karin e Simon
function sala = geraAmbiente()

  global dim;
  global parede; 
  global ouro; 

  sala = (rand(dim, dim)>0.7)*ouro;
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