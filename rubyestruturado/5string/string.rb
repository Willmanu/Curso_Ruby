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

  Se escrever essa mensagem entre aspas duplas ou simples, teremos conflitos.
  Cada aspas simples ou dupla abre e fecha, assim o programa sabe que é um testo.
  Sempre será assim uma abre e outra fecha, porém em casos de palavra como It's
  que tem uma aspas simples separando o It do s, o programa entende que essa aspa
  simples após o It, fecha a primeira que foi aberta desconsiderando o resto da frase.

  Para não temos esses conflito precisamos usar caracteres de escape.
  Caracteres de escapes serve para isso: escapar de conflitos como esses ditos em string.
  Usa uma barra inclinada para esquerda \ ates do caractere que desejar escapar
  Por exemplo:
=end

frase = 'It\'s a "string" with \'quotes\' '
puts frase

=begin

  Perceba que o que foi impresso na tela é: It's a "string" with 'quotes', ou seja,
  exatamente a frase com as palavras que usam aspas simples e duplas sem conflitos.

  Como eu quero que a frase traga as aspas simples entre o It e s, a barra vai na frente
  da aspas simples para traze-la. Da mesma forma na palavra 'quotes', para trazes
  as aspas simples a barra vai a frente de cada aspa indicando que é para traze-la.
  Na aspas duplas não é necessário por a barra, porque se trata aqui abrindo e fechando
  a frase, aspas simples e elas não entram em conflitos.


  Para tornar mais fácil essa questão, podemos ao invés de usar caractere de escape o %q()
  Em Ruby, %q() é uma notação para criar uma string contendo um bloco de texto sem a
  necessidade de escapar caracteres especiais como aspas simples, aspas duplas e
  barras invertidas. %q() é chamado de "quote operator" ou "operador de citação".
  Exemplo:
=end

frase = %q(It's a "string" with 'quotes')
puts frase

=begin
  Perceba que o que foi impresso na tela é: It's a "string" with 'quotes', ou seja,
  exatamente a frase com as palavras que usam aspas simples e duplas sem conflitos.

  O () é um delimitador abrindo e fechando, quando se usa esse delimitador (),
  no texto não poderá haver a outra metade do parentese fechando -> ')'
  porque se não o programa entendera que este proximo fecha com o primeiro e o
  resto do texto ficara def ora da impressão gerando conflito.

  Por essa razão esse delimitador  pode ser substituído por outros caracteres delimitadores,
  como %q{}, %q[], %q!!, etc. Isso é útil quando a string contém parênteses ou outros
  caracteres que interferem com a sintaxe do %q(). 
  Por exemplo:

=end

texto = %q{'Isso é um exemplo de' "string" usando parênteses ( ) no texto.}
puts texto

=begin
  O que será impresso é:
  Isso é um exemplo de string usando parênteses ( ) no texto.
  Perceba que foi usado Chaves com delimitador.
=end
