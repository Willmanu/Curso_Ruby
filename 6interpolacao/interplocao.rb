# interpolação é construir um novo conjunto de dados (string - texto)
# a partir de um conjunto de dados existente, ou seja, 
# pegar duas coisas separadas e juntar fazendo uma só.
# na frente da variável que vai receber a interpolação usa:
# #{} -> jogo da velha, abre e fecha chaves

nome = 'William'
mensagem = "Bem vindo #{nome}" # juntando o texto Bem vindo + a variável nome
                               # que contém o nome William

puts mensagem # aqui ele vai mostrar: Bem vindo William

# a interpolação não somente junta uma variável na outra
# , como na concatenação, como dentro das de chaves
# podemos usar código ruby.
# O ruby entende que tudo que está dentro de chaves #{} é para processar