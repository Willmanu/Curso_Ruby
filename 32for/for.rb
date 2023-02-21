=begin

O for é igual o each: uma estrutura de controle que permite iterar sobre uma lista ou coleção de objetos,
como um array ou um range. A sintaxe básica do for em Ruby é a seguinte:

	for i in [valores da lista ou coleção]
      bloco de código
	end

	for significa para
	i é a variável que vai inteirar, ou seja, receber os valores da lista ou coleção
	in significa em, neste caso tenho uma lista na frente do in. Isso significa que a
	variável i vai iterar com valores desta lista ou coleção

	Interpretando em português fica: para cada valor nesta lista eu salvo o valor no i e
    o bloco de código vai acontecer ate acabar os valores na lista.

=end

for i in [1, 2, 3, 4, 5]

puts "Meu valor é #{i}"

end

=begin

  A impressão fica:
  Meu valor é 1
  Meu valor é 2
  Meu valor é 3
  Meu valor é 4
  Meu valor é 5

=end