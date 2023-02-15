=begin

  Enquanto uma variável guarda um valor, o Array guarda mais de um podendo até com ele
  se formar listas.

  Existe duas forma para declarar ou inicializar o array:
  - o nome do array e após o = abre e fecha colchete []
  - ou nome do array e após = escreve-se Array.new
  Exemplo:
  
=end

array_1 = []
p array_1.class # a impressão é Array

array_2 = Array.new # O .new é um método que instancia novo objeto daquela classe
p array_2.class

=begin
  Para incluir valor no array se faz de duas formas:
  nome_array << valor
  ou 
  nome_array.append(valor)
=end

array_1 << 1
array_1.append(2)
p array_1 # aqui é impresso [1, 2]
p array_1.length # aqui é impresso 2

=begin
  A lista de itens colocado no array, pode crescer a vontade.
=end