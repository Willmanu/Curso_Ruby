=begin
                         String
  São cadeias de caracteres.
  Define-as dentro de aspas duplas ou simples
  Dentro de aspas duplas é preferível quando se usa interpolação
=end

nome = "William"
nome2 = 'Emanuel'
puts nome
puts nome2

=begin

  Para transformas outros tipos em texto basta usar .to_s 
  nome_variável.to_s -> transforme para string

=end

numero = 1234510
p numero
puts numero.class # o que se imprimi é Integer

texto = numero.to_s
p texto
puts texto.class # o que se imprimi é String

=begin
  Sabemos que uma string é escrita contendo aspas simples (prefirível se não for escrever
  interpolação) ou aspas duplas (preferível quando escrever interpolação.) 

  E o que fazer se em uma mensagem que formos escrever para o usuário tiver que usar
  esses caracteres especiais?
  Veja este exemplo abaixo, uma frase em ingles que contém palavras com
  aspas duplas e simples.
  It's a "string" with 'quotes'




=end

=begin
      O %q
  Em Ruby, %q() é uma forma de delimitar uma string literal que é usada para
  criar uma string sem a necessidade de escapar caracteres especiais.
  É uma forma de criar uma string sem interpolação de variáveis ou expressões embutidas.
  O %q é seguido por um par de parênteses, onde você pode colocar o conteúdo da string.

Por exemplo, %q(foo bar) é equivalente a uma string literal 'foo bar'.
No entanto, %q() é especialmente útil quando a string contém muitas aspas simples ou duplas,
evitando a necessidade de escapar cada uma delas.
Por exemplo, %q(It's a "string" with 'quotes') produz a string It's a "string" with 'quotes'.

Também existe uma variação de %q() chamada %Q(), que é semelhante, mas permite interpolação
de variáveis e expressões embutidas.

=end


texto = %q(12345 meu texto é o melhor, é top 10 levando nota 100.0000)
puts texto # o que se imprimi é String
puts texto.class # o que se imprimi é String

=begin
Em Ruby, %q() é uma notação para criar uma string contendo um bloco de texto sem a necessidade de escapar caracteres especiais como aspas simples, aspas duplas e barras invertidas. %q() é chamado de "quote operator" ou "operador de citação".

O %q é seguido de parênteses contendo o texto que se deseja incluir na string. Por exemplo:

c
Copy code
texto = %q(Isso é um exemplo de string usando o operador de citação em Ruby.)
puts texto
O código acima produzirá a saída:

go
Copy code
Isso é um exemplo de string usando o operador de citação em Ruby.
O %q() pode ser substituído por outros caracteres delimitadores, como %q{}, %q[], %q!!, etc. Isso é útil quando a string contém parênteses ou outros caracteres que interferem com a sintaxe do %q(). Por exemplo:

c
Copy code
texto = %q{Isso é um exemplo de string usando parênteses ( ) no texto.}
puts texto
O código acima produzirá a saída:

go
Copy code
Isso é um exemplo de string usando parênteses ( ) no texto.
=end
