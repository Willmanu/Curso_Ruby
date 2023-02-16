=begin
  Contas com Integer e Float qual será o resultado?
  O resultado sempre será Float.
  exemplo:
=end

number = 42 # integer
number2 = 42.2 # float

soma = number + number2 # 42 + 42.2

puts soma # o que aparece aqui é: 84.42
puts soma.class # é float

multiplica = number * number2 # o que aparece aqui é 1772.4
puts multiplica

divid = number / number2 # 0.995260663507109
puts divid

=begin
  Existe outra forma de fazer essas operações básicas.
  O fato de tudo em Ruby ser um objeto, posso chamar o metodo send para fazer as operações.
  Sintaxe:
  operador.send('operador', valor_a _ser_operado)
  Exemplo:

=end

soma = number.send('+', number2)
puts soma

multiplica = number.send('*', number2)
puts multiplica

dividi = number.send('/', number2)
puts dividi

subtrai = number.send('-', number2)
puts subtrai

# perceba que é só trocar o operador para realizar as outras formas.