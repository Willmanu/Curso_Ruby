=begin

break -> significa quebrar 
Onde o posicionarmos, interrompe o código, ou seja, quebra e execução
e sai do laço para executar as demais partes do código se hover.

=end

valor = [1, 2, 3, 4, 5, 6, 7, 8]

valor.each do |element|

  puts "meu valor é #{element}"

  break if element == 5

end


=begin

  O que foi impresso é:
  meu valor é 1
  meu valor é 2
  meu valor é 3
  meu valor é 4
  meu valor é 5
   ou seja p break parou o loop quando chegou em 5.

   next -> significa próximo
   Usado para pular para a proxima interação
   Exemplo:
=end

i = 0
while i < 10 do
  i += 1
  if i ==5
	next
  end

   puts i

end

resp = i + 2

puts "O valor de i é #{i} e #{i} + 2 é #{resp} por isso o valor de rep é #{resp}"

=begin
  
  A impressão é:
  1
  2
  3
  4
  6
  7
  8
  9
  10
  O valor de i é 10 e 10 + 2 é 12 por isso o valor de rep é 12

  Perceba que a impressão é até 10 e depois a mensagem.
  O código não parou em 5 sem imprimir os demais números porque o comando
  "next" faz com que o loop pule para a próxima iteração sem executar o
  código abaixo dele, mas o loop continuará normalmente.
  Então, quando a variável "i" for igual a 5, a instrução "next" será
  executada e o loop irá para a próxima iteração, sem executar o "puts i"
  para o valor 5.

  Isso significa que os demais números serão impressos normalmente,
  já que o comando "next" só afeta a iteração em que é chamado.
  Então, o loop continuará a imprimir os valores de "i" até que "i" seja
  maior ou igual a 10 e o loop pare, de acordo com a condição do "while".

  Após isso perceba que a mensagem de que resp é 12 vem,
  porque o next como dito antes, não executa a proxima linha
  de código dentro do loop saindo para a proxima linha de código fora dele

  Em resumo, "next" é útil para controlar o fluxo de execução em loops e pode
  ser usado para pular iterações, ignorar elementos, ou fazer verificações prévias.


  redo -> significa refazer.
  O método redo é usado dentro de um loop para refazer ou repetir a iteração atual.
  Quando o redo é chamado, a iteração atual é repetida, sem voltar ao início do loop.
  Como exemplo veremos o loop abaixo.

=end

i = 0
while i < 5 do

	if i == 3

	 i += 1
	 
	 redo
	 
	end

	i += 1
	puts i
end

=begin

  Nesse código, enquanto o i for menor que 5 o loop será executado.
  Dentro do loop, há um if que verifica se i é igual a 3.


=end