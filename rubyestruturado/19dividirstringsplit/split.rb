=begin
  Dividir Strings ou Separá-las
  A palavra split significa dividir
  Com o método .split() consigo dividir string separando cada palavra
  dia cordo com o que esta separando-as.
  Exemplo:
  Neste exemplo o que separa uma palavra da outra são os espaços.
  Então ao escrever o método, passo como parâmetro o espaço dentro de aspas.
  Assim estou dizendo ao .split para dividir o texto pelos espaços.
=end

nome = ' William Emanuel Pamella Milena'.split(' ')
puts nome

=begin

A impressão fica assim:
William
Emanuel
Pamella
Milena
Cada palavra empilhada uma embaixo da outra.

  Se estas palavras fossem separadas por um hífen (-) o split seria: .split('-')
  E assim sucessivamente. O que separa as palavras é o que vai no parametro.
=end