=begin
  
  Um laço que a comunidade Ruby usa no lugar do for.
  each significa cada
  Este laço ou como também é conhecido: método, é usado para iterar sobre uma lista ou coleção
  de elementos, como uma matriz (array) ou um hash, e executar um bloco de código para cada
  elemento na lista ou coleção.
  
  O método each é usado em conjunto com um bloco de código que contém a lógica que deve ser
  executada em cada elemento da lista ou coleção.
  O bloco de código é definido entre chaves {} ou com as palavras-chave -> do e end.

	Sintaxe:

	nome_variável.each do |varável_item|
     bloco a ser executado
	end
  Exemplo:

=end

lista = [0, 1, 2, 3, 4, 5]

lista.each do |item|
puts "Meu item da lista é #{item}"

end

=begin
lista = [0, 1, 2, 3, 4, 5] aqui temos uma lista de números até o 5

lista.each → isso está dizendo para cada elemento da  lista, array ou hash

após isso escrevo a palavra 'do' para abrir o bloco e 'end' para fechar

'do' significa faz, ou seja, faça o que estiver no bloco de código.

após o 'do' temos entre barras || uma variável que vai interagir com o bloco

O que o código faz?
o each vai pegando cada elemento da lista, joga dentro da variável item e após isso,
imprimi a mensagem. O loop vai repetindo até acabar os item da lista.

No final a impressão fica assim:

Meu item da lista é 0
Meu item da lista é 1
Meu item da lista é 2
Meu item da lista é 3
Meu item da lista é 4
Meu item da lista é 5
  

Vejo um exemplo com Hash:
=end

h = {nome: 'William', idade: 42}

mensagem = 'com o valor'

h.each do |chave, valor|

	puts "Minha chave é #{chave} #{mensagem} #{valor}"

end

=begin

  A impressão fica assim:

  Minha chave é nome com o valor William
  Minha chave é idade com o valor 42

=end