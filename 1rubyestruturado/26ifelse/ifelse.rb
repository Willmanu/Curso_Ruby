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

if nome.empty? # pergunta se a variável nome esta vazia.

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

if num2 <= num1

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

	# O resultado vai ser :  Somos iguais.

end

# != (diferente de):

if num1 != num3

	puts 'Somos diferentes'

else

	puts 'Não somos diferentes'

	# O resultado vai ser : Não somos diferentes

end

=begin

                Operadores lógicos
  Em Ruby, os operadores lógicos são usados para combinar valores booleanos e retornar
  um novo valor booleano como resultado.
  Esses operadores incluem:

&& (e lógico): retorna verdadeiro se ambos os valores à esquerda e à direita forem verdadeiros.
|| (ou lógico): retorna verdadeiro se pelo menos um dos valores à esquerda e à direita for verdadeiro.
! (negação lógica): retorna verdadeiro se o valor for falso e falso se o valor for verdadeiro.
Exemplo:

=end

# && (e lógico):

valor = 50

if valor >= 50 && valor < 51

 puts 'Só funciona se as duas condições forem verdadeiras'

end

# || (ou lógico):

if valor >= 50 || valor < 51

  puts 'Se uma condição for verdadeira e a outra falsa vai imprimir, ou um ou outro'

end

# ! (negação lógica):

valor = ''

if !valor.empty?
  
	puts 'Eu tenho alguma coisa'

else

	puts 'Eu não tenho nada'

	# a pergunta que o programa faz aqui é: se não estiver vazio.

end

=begin
  
                             Condicionais aninhadas
  São estruturas condicionais(if else end), de controle de fluxo, de múltiplas condições de escolha.
  São conjuntos de condições dentro de outras, com o propósito de executar diferentes blocos se 
  for falsa ou verdadeira essas condições.

  Aninhada vem do latim 'NIDUS', que significa "ninho".
  Esta palavra aninhada é usada para descrever algo que está em um estado de ninho, ou seja,
  algo que esta envolvido dentro de algo maior ou mais abrangente.
  Neste contexto e em resumo, condicionais aninhadas são condicionais que estão dentro de outras.
  exemplo:

  Tenho uma variável que recebeu dentro desta o valor 20. Vou testar essa variável como propósito
  de saber se este valor que a variável carrega é igual, maior, diferente ou menor que outro numero.

=end

valor = 40

if valor == 50
  puts 'Sou igual a 50'
elsif valor > 50
  puts 'Sou maior que 50'
elsif valor != 40
  puts 'Sou diferente de 40'
else
  puts 'Sou menor que 50'
end

=begin

  Perceba que em condicionais aninhadas usamos a palavra els+if, ou seja, elsif que significa "se não"
	se o valor for igual a 50 executa o bloco de código na proxima linha e encerra estas analises.
	O programa ve que a condição é falsa e ao invés de encerrar, vê o "se não" e lê essa condição
	se esta for verdadeira executa o bloco de código dentro desta condição e encerra
	se for falsa o programa segue vendo as próximas condições, e achando verdade executa o bloco de
	código que esta dentro desta verdade e encerra o programa sem verificar as demais condições se tiver.

    Observação:  Perceba que a ultima palavra é else e não elsif. Isso porque else é usado quando
	não há mais condições para verificar, ou seja, else é sempre a ultima opção.
  


	                               Condicional simples em uma linha

	Essa é uma outra forma de se fazer condicionais.
	Na estrutura que vimos até agora, temos a condição primeiro e se for verdade ou falso
	executa o bloco de código.
	Nessa nova estrutura vem o bloco de código primeiro e depois a condição. Execute o
	bloco de código se for falsa ou verdadeira a condição. Porém tudo escrito em uma linha só.
	Exemplo:
=end

valor2 = 90
puts 'Eu sou maior que 50' if valor2 > 50
# O trecho acima diz: imprima a mensagem se o valor for maior que 50.

=begin
  
                      Condicional composta em uma linha

  Neste caso de condicional composta vem  a condição primeiro e depois a execução do código.
  Porém em uma linha só.
  Exemplo:
=end

valor3 = 70
valor3 > 50 ? puts('Eu sou maior que 50') : puts('Eu sou menor que 50')

=begin
  Observações:
  O else neste trecho acima é representado pelos dois pontos (:)
  Nesta caso usei o operador ? para fazer uma pergunta:
   O valor que a variável valor2 carrega é maior que 50?
   Uma coisa importante aqui é que o operador ? precisa de um espaço entre a condição
   e o bloco de código.

   Outra coisa importante aqui e diferente da condicional simples é que:
   1º ao usar o método para imprimir na tela, precisa ter parentese() e dentro vai a mensagem
   2º estes parenteses são colados a palavra de puts ou p ou print.
   3º os dois ponto que representa o else também precisam ter espaços entre as mensagem.
   
=end