=begin
              Verificando se um numero é para.
  Existem situações, que vamos precisar verificar se um numero que vai
  ser obtido é par ou impar, para determinados resultado.
  Umas das formas para saber é dividindo este numero por dois, e se o resto da divisão
  for 0 então saberemos que é par, caso contrário é impar.

	Para ver o resto da divisão usamos o % na operação.
	Exemplo:
=end

puts 'Digite um numero'

numero = gets.to_i # Tudo que é obtido do teclado do pc é string. 
                   # Portanto precisa fazer a conversão para Integer ou Float

if numero == 0
  puts 'O numero digitado é zero e ele não é divisível. Por favor digitar outro numero.'

  # aqui falta interromper o programa
end

resultado = numero % 2 # usando o porcentagem para ver o resto da divisão

if resultado == 0
	puts "O número digitado é: #{numero} portanto é par"
  
  else
	  puts "O número digitado é: #{numero} portanto é impar"

end

=begin

Uma outra forma bem mais simples de se fazer essa tarefa é usar os métodos
.even para o par e .odd para o impar

=end

=begin
  Perceba que não precisa fazer conta e verificar.
  Somente fazer as perguntas e depois fazer a logica para exibir na tela.
=end

puts 'Digite um numero'

numero = gets.to_i
if numero.zero?
  puts 'O numero digitado é zero e ele não é divisível. Por favor digitar outro numero.'

  # aqui falta interromper o programa
end
  

if numero.even?
  puts "O número digitado é: #{numero} portanto é par"

else

  puts "O número digitado é: #{numero} portanto é impar"

end
