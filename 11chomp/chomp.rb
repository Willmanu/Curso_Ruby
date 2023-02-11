=begin
Estou fazendo um programa em Ruby e preciso fazer uma pergunta ao user, 
colher essa entrada de dados, guardar em uma variável e trabalhar ela no código.
Bom, posso usar o método get pata ler a entrada do usuário e guardar na variável.
	Exemplo:
=end

mensagem = 'Por favor! digite seu nome'
puts mensagem
name = gets.chomp
puts "Olá #{name}, prazer em conhecê-lo!"

=begin
  O que vai acontecer aqui é que: a mensagem -> 'Por favor! digite seu nome'
  aparecerá para o user e o cursor vai ficar piscando esperando o user digitar o nome.
  Assim que o user digitar, o get pega a informação guarda na variável 
  Em seguida é impresso na tela: Olá + o nome_User, prazer em conhecê-lo!

  Caso não tivesse o .chomp a frente do get, a mensagem de cumprimento ao user seria divida
	desta forma:
	Olá + nome_User
	, prazer em conhecê-lo
	Veja o exemplo abaixo e confira.
=end
p mensagem
name = gets
p "Olá #{name}, prazer em conhecê-lo!"

=begin
  Ao invés de usar o pust usei o p porque este ultimo faz a inspeção, ou seja, 
  apresenta coisas ocultas no código.
  Agora o que será impresso é: "Olá nome_user\n, prazer em conhecê-lo!"

  Perceba que \n aparece a frente do nome do usuário
  Esse caractere especial (\n) faz a quebra da linha. Estava oculto e graças ao p que inspeciona,
  mostrou o que está oculto e podemos velo ai na impressão.

  É isso que o chomp fez aqui, removeu o \n 
  assim a mensagem permanece em uma unica linha e não dividida

  Resumo: sem o .chomp caracteres especiais atuam
  com o .chomp os caracteres especial não atuam.
  Veja outro exemplo:
=end

nome = gets
if nome == "David"
  p "Olá David, estávamos esperando você!"
end

=begin
Neste código acima, por conta de não usar .chomp com gets, as duas strings 
David digitado pelo user e David declarado de forma constante
 não serão as mesmas strings por causa do caractere de nova linha (\n),
 então isso será avaliado como falso.
Veja com o .chomp
=end
nome = gets.chomp
if nome == 'David'
  p 'Olá David, estávamos esperando você!'
end

=begin
  Agora com o .chomp a comparação foi true e temos a mensagem na tela.
  Preciso ficar de olho nesses caracteres especiais e, sempre usar o .chomp ao pegar 
  informações do user ou informações que vem de fora do get como no banco de dados, arquivo etc.
=end
