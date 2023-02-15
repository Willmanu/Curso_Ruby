=begin
               Símbolo, Label ou Chave
  Pase ter uma string preciso criar uma variável e armazenar o texto dentro.
  Tudo em ruby é objeto. Então todo vez que uso essa string, o sistema cria um id novo,
   ou seja, é criado um objeto novo na memória.
   Exemplo:
=end

nome = 'William'
puts nome.object_id # a impressão é 60
nome = 'William'
puts nome.object_id # a impressão é 80
nome = 'William'
puts nome.object_id # a impressão é 100
nome = 'William'
puts nome.object_id # a impressão é 120

=begin

  Fazer um simbolo, label ou chave não é necessário armazenar em uma variável.
  Não cria um id novo, ou seja, não cria um objeto novo na memória.
  Todo vez que chamo esse simbolo o sistema percebe que já tem o simbolo em memória 
  e o reutiliza, não cria outro.
  Fica melhor a visualização do conteúdo.
  Ajuda a poupar memória e é mais performático

  Simbolo, label ou chave são tipos especiais de objetos.
  São declarados com dois pontos (:) no inicio do identificador.
  Exemplo:

=end

:William
puts :William.object_id # a impressão é 1013348

:William
puts :William.object_id # a impressão é 1013348

:William
puts :William.object_id # a impressão é 1013348

=begin
  Melhor usar Simbolo, label ou chave do que string
  Ajuda a poupar memória e é mais performático

  Veja essa exemplo fazendo contas simples.
=end

puts 1.send('+', 2) # a impressão é 3

puts 1.send(:+, 2) # a impressão é 3

=begin
  No segundo exemplo criei o símbolo, usei para somar, e obtive o mesmo resultado.
  Porém sem criar um novo método somar na memória, todo vez que usa-se.

O Ruby tem o Garbage Collector que vai coletando lixo, 
por exemplo variáveis que não são usadas mais.
=end