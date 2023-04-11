=begin
                                        Método .times
 times é um método disponível em objetos do tipo Integer
 Ele permite executar um bloco de código um número especificado de vezes
 A sintaxe básica do times é:
    int.times do
     # código a ser executado
    end

  int é um objeto do tipo Integer que especifica o número de vezes que o bloco deve ser
  executado. Isso faz sentido quando pensamos no nome do método que significa tempo, ou seja,
  "int.times do" significa o loop vai fazer a quantidade de tempo que esse int for

 Dentro do bloco do, é possível escrever qualquer código que desejar executar o número
 especificado de vezes. O bloco é executado com um parâmetro implícito que representa o
 índice da iteração atual (iniciando em 0)

=end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
length_array = array.length

length_array.times do |i|
  puts "O numero que está na posição #{i} é #{array[i]}"
end

=begin

  Aqui temos um array declarado e uma variável length_array que recebe o tamanho do array
  O tamanho do array é a quantidade de vezes que o loop acontecera
  Dentro do método método peço a impressão da posição do array, que está em i e o valor que
  esta nesta posição

  O resultado é:
   O numero que está na posição 0 é 1
   O numero que está na posição 1 é 2
   O numero que está na posição 2 é 3
   O numero que está na posição 3 é 4
   O numero que está na posição 4 é 5
   O numero que está na posição 5 é 6
   O numero que está na posição 6 é 7
   O numero que está na posição 7 é 8
   O numero que está na posição 8 é 9
   O numero que está na posição 9 é 10

    Observação: Perceba que ele começão a interação no zero e não em 1
	É importante notar que, embora o times seja um método em um objeto Integer, ele não
	modifica o valor do objeto. Ele apenas executa o bloco de código o número de vezes
	especificado
=end
