=begin

  Hash é uma estrutura de chave-valor.
  Em outras linguagem são chamadas ou de Hashes Map ou Dicionários.
  O Hash funciona como no Array, ou seja, é uma variável que guarda mais de um valor,
  e com isso conseguimos criar listas.

  No Array quando colocamos valores, cada valor tem sua posição na lista começando em 0.
  Quando procuramos algo dentro desse array, o programa percorre a lista inteira ate achar
  esse índice.
  Exemplo:

=end

lista = Array.new
lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p lista[9]

=begin
  A impressão foi o numero 10, porque o primeiro índice/posição é 0 e não 1.
  Para trazer esse numero o código percorreu todo o array vendo um por um dos índice/posição até achar
  o índice/posição 9.

  Com o hash não funciona assim. Ele vai exatamente no índice informado, portanto uma busca mais rápida.

  As formas de se iniciar um has é:
  escreva o nome do hash, sinal de igual e abre e fecha chaves.
  ou
  escreva o nome do hash, sem espaço entre o nome digite um ponto e escreva new.

	O primeiro é o que se recomenda usar.

=end

hash = {}
p hash.class

hash = Hash.new # lembre-se que dessa forma a palavra hash após o = é com a primeira em maiúscula.
p hash.class

=begin
  
  Para inserir valor dentro do hash se faz:
  1º nome da variável que recebe os valores
  2º sinal de igual
  3º Abre e fecha chave
  4º sinal de igual e sinal de maior de atribuição
  5º o valor
  Exemplo:
   
  hash = { chave => 1 }

  ou 

  1º nome da variável que recebe os valores
  2º abre e fecha colchetes com o nome chave dentro
  3º sinal de igual
  4º valor
  exemplo:

  hash [chave] = 2

=end



