=begin
                  Puts ou P ou Print
  Em Ruby, puts, p e print são todos métodos usados para imprimir na tela, 
  mas eles têm algumas diferenças na forma como funcionam.

  P imprimir na tela faz a quebra da linha, e mostra na impressão os carácteres ocultos.
  Isso porque este faz uma inspeção, ou seja, olha o que tem para imprimir e mostra
  tudo o que viu. 
  Por exemplo:
=end

p 'digite um numero'
numero = gets

p 'Seu numero é:', numero

=begin
  O que foi impresso é:
 "digite um numero"
  42
  "Seu numero é:"
  "42\n"

  Embora eu tenho colocado a frase na mesma linha, o P fez a inspeção, viu que quando
  foi pego o valor digitado pelo usuário, o programa automaticamente incluiu o caracteres
  de escape \n (quebra de linha), ao imprimir quebrou a linha colocando o valor digitado
  na outra linha.
  Na inspeção o p entendeu que se trada de  uma string o valor pego, e colocou aspas 
  no valor impresso indicando que é string.

  Agora o puts não faz a inspeção mas imprime na tela e faz a quebra da linha.
=end


puts 'digite um numero'
numero = gets

puts 'Seu numero é:', numero

=begin

  Veja abaixo a impressão do puts
  digite um numero
  42
  Seu numero é:
  42


  Print não faz a inspeção, não mostra caracteres especiais e não faz a quebra da linha,
  mantendo tanto pergunta como resposta uma ao lado da outra.
=end

print 'digite um numero'
numero = gets

print 'Seu numero é:', numero

=begin
  veja a impressão abaixo
  digite um numero42
  Seu numero é:42

  Quado o programa fez o pedido para digitar um numero, o cursor ficou piscando esperando
  o usuário digitar, na frente da frase. Diferente dos outros métodos e ficou piscando 
  na linha abaixo da frase.

  Em resumo, puts é usado para imprimir uma string com uma nova linha no final,
  p é usado para exibir o valor de um objeto
  print é usado para imprimir uma string sem uma nova linha no final.
=end