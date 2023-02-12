=begin

  Estou fazendo um programa em Ruby e preciso fazer uma pergunta ao user, 
  colher essa entrada de dados, guardar em uma variável e trabalhar ela no código.

  Bom, posso usar o método get para pegar a entrada do usuário e guardar na variável.
  Exemplo:
=end

p 'Por favor! digite seu nome'
name = gets
puts "Olá #{name}, prazer em conhecê-lo!"

=begin
  O que vai acontecer aqui é que: a mensagem -> 'Por favor! digite seu nome'
  aparecerá para o user e o cursor vai ficar piscando esperando o user digitar o nome.
  Assim que o user digitar, o get pega a informação guarda na variável 
  Em seguida é impresso na tela: 

  Olá + o nome_User
  , prazer em conhecê-lo!

  Observe que a frase ficou quebrada, ola + nome_User em uma linha e 
, prazer em conhecê-lo em outra

  Observe que para imprimir eu usei o p e não outro, porque este p faz a inspeção, ou seja, 
  apresenta coisas ocultas no código.

  Em oculto temos o caractere especial \n 
  veja a frente do nome_user na impressão tem o \n

  "Olá nome_user\n, prazer em conhecê-lo!"

  Esse caractere especial faz a quebra da linha, 
  tudo que estiver a frente dele vai para outra linha.

  Agora para testar vou usar o .chomp a frente de .gets
  Veja o exemplo abaixo e confira.
=end

p 'Por favor! digite seu nome'
name = gets.chomp
p "Olá #{name}, prazer em conhecê-lo!"

=begin

  O que foi impresso agora é: "Olá nome_user\n, prazer em conhecê-lo!", ou seja,
  a frase inteira em uma só linha.

  É isso que o chomp faz, remove caracteres especiais. Então aqui como foi removido o /n, 
  a frase , prazer em conhecê-lo! não se vai para outra linha.

  Toda vez que for pegar (gets) uma informação do user, ou informações que vem de fora do get
  como no banco de dados, arquivo etc. devo sempre usar o .chomp

  Resumo: sem o .chomp caracteres especiais atuam
  com o .chomp os caracteres especiais não atuam.

  Veja o que acontece neste exemplo abaixo ao imprimir
=end

p 'Por favor! digite seu nome'
nome = gets
if nome == 'David'
  puts 'Olá David, estávamos esperando você!'
end

=begin

  Neste código acima, por conta de não usar .chomp com gets, as duas strings 
  David digitado pelo user e David declarado de forma constante
  não serão as mesmas strings por causa do caractere de nova linha (\n),
  então isso será avaliado como falso.
  Veja com o .chomp
=end

p 'Por favor! digite seu nome'
nome = gets.chomp
if nome == 'David'
  p 'Olá David, estávamos esperando você!'
end