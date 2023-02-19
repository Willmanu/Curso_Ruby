=begin

Condicionais são estrutura de controle de código que vai ser executado um trecho de código
dependo de sua condição.

Abre com a palavra if
E fecha com a palavra end
O que estiver entre essas duas palavras vão ser analisadas.

As condições podemos interpretar da seguinte forma:

Se algo for verdadeiro
  faça isso

se não

  faça isso aqui

fim

Olhando para esse exemplo acima fica assim a sintaxe real:

if "condição"
	puts condição
else
	puts condição2
end 

Exeplo:

=end
nome = 'William'

if nome.empty? # pergunta se o numero esta vazio.

	puts 'Não pode ficar sem nome'
else

	puts "O nome é #{nome}"

end

=begin

  Podemos interpretar essa logica da seguinte forma:
  Se a variável nome estiver vazia
   imprima a mensagem: 'Não pode ficar sem nome'
  se não estiver vazia
   imprima a mensagem: O nome é William

              Operadores relacionais
  Em Ruby, os operadores relacionais são usados para comparar dois valores e retornar
  um valor booleano (verdadeiro ou falso) como resultado.
  Esses operadores incluem:

> (maior que): retorna verdadeiro se o valor da esquerda for maior que o valor da direita.
< (menor que): retorna verdadeiro se o valor da esquerda for menor que o valor da direita.
>= (maior ou igual a): retorna verdadeiro se o valor da esquerda for maior ou igual ao valor da direita.
<= (menor ou igual a): retorna verdadeiro se o valor da esquerda for menor ou igual ao valor da direita.
== (igual a): retorna verdadeiro se o valor da esquerda for igual ao valor da direita.
!= (diferente de): retorna verdadeiro se o valor da esquerda for diferente do valor da direita.
  Exemplo:

=end

# > (maior que): 

num1 = 20
num2 = 10

if num1 > num2 

	puts 'Maior'
else

	puts 'Menor'

	# O resultado vai ser : Maior.

end

#< (menor que):

if num2 < num1

	puts 'Menor'
else

	puts 'Maior'

	# O resultado vai ser : Menor.

end

#>= (maior ou igual a):

if num1 >= num2

	puts 'Maior mas não igual'

else

	puts 'Menor mas não igual'

	# O resultado vai ser :  'Maior mas não igual'.

end

# <= (menor ou igual a):

if num2 = num1

	puts 'Maior mas não igual'

else

	puts 'Menor mas não igual'

	# O resultado vai ser :  'Maior mas não igual'.

end

# == (igual a):

num3 = 20
if num2 == num3

	puts 'Somos iguais'

else

	puts 'Não somos iguais'

	# O resultado vai ser :  'Maior mas não igual'.

end