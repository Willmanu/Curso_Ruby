=begin

                              Range
Este é um objeto que representa um intervalo de valores e um ponto ao outro.
Ele é definido por um valor inicial, um valor final e um sinal de três pontos (...)
ou dois pontos (..) que indicam se o valor final está incluído ou não no intervalo.
Exemplo:

range = 1..5 ou range = 1...5
Com os dois pontos .. o valor 5, ou seja, valor final é incluído.
Com os tres pontos o ... o valor, ou seja, valor final não é incluído
=end

range = 1..5

range.each do |valores|

 puts "Valore #{valores}"
end

=begin

Com os dois pontos .. a impressão fica:
Valore 1
Valore 2
Valore 3
Valore 4
Valore 5
veja que o 5 o numero final imprimiu
=end

range2 = 1...5

range2.each do |valores|
 
	puts "Valores: #{valores}"

end

=begin

  a impressão é:
  Valores: 1
  Valores: 2
  Valores: 3
  Valores: 4
  Perceba que com os 3 pontos ... o valor 5 numero final não é impresso.
=end