=begin
  Para definir array em Ruby faça o seguinte:
  a frente da variável que vai ser do tipo array abra e feche chaves -> []
  ou meuarray = Array.new
   exemplo:
=end

meuarray = []
p meuarray.class # mostra na tela que o tipo da variável é array

meuarray_2 = Array.new
p meuarray_2.class

=begin
  Para fazer uma lista dentro do array, cada valor deve ser separado por virgula.
	exemplo:
=end

meuarray = ['Emanuel', 'William', 'Pamella', 'Yuri', 10, 11, false, nil]
p meuarray # a impressão fica exatamente mostrando os valores igual está acima

=begin
  A lista pode ser composta por tipos diferentes,
  perceba que na impressão mostra os tipos diferentes que no array.
=end