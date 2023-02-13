=begin
        Formatando números adicionando zeros a sua frente

  Digamos que aja uma regra de que um determinado número, precise sempre ter 5 dígitos.

  E na ocasião obtemos por meio do get, um numero inteiro como exemplo o 42.
  Mas como regra de negocio esta variável precisa conter 5 dígitos.
  Precisamos formatá-lo para ficar com este 5 digito. exemplo: -> 00042, ou seja, 
  neste caso acrescentar 3 zeros a frente para somar com os dois outros números 
  e assim termos 5 casas decimais. 

  Para isso usamos o simbolo -> % mais a quantidade de dígitos que queremos na variável.
  Exemplo: %05d

  Se quisermos uma variável com mais dígitos é só dizer o quanto queremos.
  Exemplo: %06d para 6 dígitos ou %07d para sete dígitos etc.

  1º vamos colher o numero e ver umas situações.
=end

print 'Digite um numero.'
numero = gets
print 'Seu número é:', numero
print numero.class # o .class mostra o tipo da variável.


=begin

  1º pedi o numero ao user
  2º colhi o número
  3º imprimi o número
  4º mostrei o tipo da variável
  
  Na impressão temos:
   "Seu número é: 42\n"
    String
  Perceba que ao colher o numero temos quebra de linha junto e o tipo é string.

  precisamos remover a quebra da linha usando o método .chomp
  e transformar seu tipo em inteiro usando o método to_i.

  O método .chomp retira os caracteres especiais
  O to_i = to significa para e o i significa inteiro
  Exemplo:

=end

=begin
puts 'Digite um numero.'
numero = gets.chomp.to_i
puts "Seu número é:" % numero
p numero.class # o .class mostra o tipo da variável.


=end



=begin

  1º pedi o numero ao user
  2º colhi o número, retirei  quebra de linha(/n) e transformei a variável em inteiro.
  3º imprimi o número
  4º mostrei o tipo da variável
  
  Com isso resolvemos a quebra da linha e seu tipo.
  Mas falta deixar esta variável com 5 casas decimais.

1-No código abaixo temos uma variável com o valor 42.
2- na linha 2 pedi para imprimir a mensagem.
3-Coloquei o%05d dentro das apas, ou seja, com a mensagem.
4-Fora da mensagem passei o parâmetro de % e indiquei a variável numero que tem os dois dígitos.
5- O sistema vai verificar a quantidade de caractere dentro da variável
 e adicionar zeros para que o total seja 5 dígitos.

=end

