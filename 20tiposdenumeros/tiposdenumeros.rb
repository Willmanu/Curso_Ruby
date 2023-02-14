=begin
  Tipos de Números em Ruby
  Temos dois tipos de números Inteiros ou Ponto Flutuante.
  Abaixo o Inteiro foi tratado como Integer e o Ponto Flutuante como Float
=end

numero = 42
puts numero.class # será impresso Integer
numero2 = 42.2
puts numero2.class # Será impresso Float

=begin
 
  Um numero muito grande como por exemplo:123456200  
  Cento e vinte três milhões
  Quatrocentos e cinquenta e seis mil
  e duzentos
  Para separadores de milhares usa-se para separa-los o underline -> (_)
  123_456_200

  Porém na impressão o Ruby ignorar este separador e junta os números ao apresenta-los ao user.
  
=end

numero3 = 123_456_200
p numero3.class # mesmo que o vejamos como float, aqui é considerado como integer

p numero3 # O resultado da impressão é 123456200 um Integer


=begin
  Se usar traços para separar, o programar entende que é uma subtração 
  e retorna o resultado subtraído
  exemplo:
=end

p 123-456-200 # o resultado é -533

=begin
usar o ponto para separa é considerado após a segunda casa, ou seja,
casa a frente do 200 um erro. só considera o 123.456 como float

	Para transforma-lo de inteiro para float na frente da varável
	usa-se o to_f -> converte pata float
	to_i converte para inteiro
	to_s converte para string
=end

p numero4 = numero3.to_f # o resultado é 123456200.0
p numero4.class # o resultado é float

p i_numero = numero4.to_i # o resultado é 1234562000
p i_numero.class # o resultado é Integer

p s_numero = i_numero.to_s # O resultado é "123456200" com aspas
p s_numero.class # o resultado é String