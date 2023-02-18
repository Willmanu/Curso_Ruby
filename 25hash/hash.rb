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
  
=end

hash = {}

