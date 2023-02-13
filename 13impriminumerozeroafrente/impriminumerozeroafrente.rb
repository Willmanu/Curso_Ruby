=begin
        Imprimindo números adicionando zeros a sua frente

  Em alguns casos é necessário imprimir zeros a frente de números.

  Para isso escrevemos:->abre apas simple, depois escreve o -> %,
  mais a quantidade de dígitos que queremos na variável, mais o d minúsculo
  e para finalizar fecha aspas simples.
  Exemplo: '%05d', ou seja, a variável precisa ser mostrada com 5 dígitos.
=end

p 'Digite um numero.'
numero = gets
p '%05d' % numero
p numero.class # o .class mostra o tipo da variável.
p numero.length

=begin

  1º pedi o numero ao user
  2º peguei o número
  3º no comando para imprimir faço o pedido de quantos caracteres quero ver na tela,
  no caso pedi para mostrar 5 caractere.
  4º mostrei o tipo da variável.
  Todo valor que o user digita é um texto, ou seja, é uma string.

  5º Pedi para contar a quantidade de caractere dentro da variável.
  No caso são 3 porque temos o caractere especial -> \n(quebra linha) que fica oculto.
  Isso significa que não foi acrescentado zeros dentro da variável
  O que acontece aqui é somente mostra 5 casas decimais, 
  preservando a quantidade de caractere dentro da variável.
  O programa olha a quantidade de caractere e adiciona os zeros somente para mostrar
  5 casas decimais.

  Podemos escrever uma mensagem para o user
  Exemplo:
=end

p 'Digite um numero.'
numero = gets
p 'Seu número é: %05d' % numero
p numero.class # o .class mostra o tipo da variável.
p numero.length

=begin

Perceba que a impressão o numero mostrado permanece a frente da frase: 'Seu número é:
Isso porque o comando '%05d' não deixa o caractere especial agir.

Se quisermos mostrar mais dígitos, é só dizer o quanto queremos.
Exemplo: %06d para 6 dígitos ou %07d para sete dígitos etc.
=end