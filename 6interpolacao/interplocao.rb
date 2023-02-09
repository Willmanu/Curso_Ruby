# interpolação é construir um novo conjunto de dados (string - texto)
# a partir de um conjunto de dados existente, ou seja, 
# pegar duas coisas separadas e juntar fazendo uma só.
# na frente da variável que vai receber a interpolação usa:
# #{} -> jogo da velha, abre e fecha chaves

nome = 'William'
mensagem = "Bem vindo #{nome}" # juntando o texto Bem vindo + a variável nome
                               # que contém o nome William

puts mensagem # aqui ele vai mostrar: Bem vindo William

# A interpolação não somente junta uma variável na outra, como na concatenação, 
# como dentro das de chaves podemos usar código ruby.
# Exemplo abaixo:
mensagem = "Bem vindo! #{1 + 2}"

puts mensagem # O que vai ser impresso é: Bem vindo! + 3
# O ruby entende que tudo que está dentro de chaves #{} é para processar
# tantos texto como números.
# O uso é indicado quanto temos variáveis para concatenar. Exemplo:

nome = "William"
nome2 = "Emanuel"
nome3 = "Pamella"
nome4 = "Sidney"
nome5 = "Carlos"
nome6 = "Miriam"
mensagem = "Bom dia! #{nome} #{nome2} #{nome3} #{nome4} #{nome5} #{nome6}"
puts mensagem

# Para interpolar com o %q (transforma tudo em texto)
# precismos por o q em maiúsculo. Exemplo:
mensagem = %Q(Resultados #{1 + 2} #{2 + 3} #{ 3 + 4} #{ 4 + 5} #{ 5 + 5})
puts mensagem
puts mensagem.class # .class mostra o tipo desta variável