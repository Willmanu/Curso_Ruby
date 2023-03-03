=begin
  Trocar uma palavra dentro de um frase por outra com .gsub( , )
Com o método .gsub podemos substituir uma palavra de um texto por outra.
Na mensagem abaixo quero substituir a palavra 'nome' pola palavra 'William'.
Pedi para imprimir na tela, usando método .gsub com os parâmetros que quero trocar, ou seja, 
a palavra 'nome' pelo conteúdo que esta dentro da varável nome que é 'William'
Exemplo:
=end

mensagem = 'Olá! nome'
nome = 'William'

puts mensagem.gsub('nome', nome) # 1º no parâmetro, vai a palavra que quero trocar.
                                 # Logo após o valor que que a substitui.
