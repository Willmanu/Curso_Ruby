=begin
Como pegar um caractere da string de uma string?
-----------------------------------------------------------
Sabemos que string é uma cadeia de caractere, ou seja, vários caracteres junto.
Em uma frase eu tenho um conjunto de caracteres formando as palavras.
Sendo assim podemos acessar os carácteres.

Uma lista de caractere sempre começa na posição zero.
Por exemplo:
=end
#       0123
name = 'Cadu'
=begin 
  nesta lista temos a letra "C" começando na posição zero,
  "a" ná posição "1", "d" na "3" e u na "4".
=end
p name [0]
p name [1]
p name [2]
p name [3]
# o resultado é uma a impressão de cada letra separadamente.
=begin
Podemos usar o método .length para contar a quantidade de caracteres dentro da variável
escrevendo nome_variável + .length
Exemplo:
=end

puts name.length
=begin
  o resultado da impressão é 4
  Se usar o -1 após a palavra length a impressão sera a ultima letra da palavra.
  Exemplo:
=end
puts name[name.length - 1]
=begin
  a impressão é a letra "u"
  Seguindo esse raciocínio se eu colocar o - 2 
  vai ser impresso a penúltima letra que é o "d" e assim sucessivamente
  Exemplo:
=end
puts name[name.length - 2]
=begin
  É possível imprimir sem usar o .length, somente colocando os números
  com o - a frente.
  Exemplo:
=end

p name[-1]
p name[-2]
=begin
  Aqui acima a impressão vai ser o 'u' - última letra- e 'd' - penúltima letra.

  Podemos acessar todas as cadeias de caracteres 
  através de um array através do método chars.
  escreve a variável que contém a string + .chars
  Exemplo:
=end

p name.chars

=begin
  O que vai ser impresso é: ["C", "a", "d", "u"], ou seja, um array com todos os caracteres
  Perceba que ele imprimi o array mostrando cada item entre as aspas, e não uma 
  impressão com quebra de linhas como anteriormente.
  
  Usando o .length mostra a quantidade de dados que tem dentro do array
	escreve a variável
	seguida de .chars
	e depois .length
  exemplo:
=end

p name.chars.length