=begin

  Hash é uma estrutura de chave-valor.
  Em outras linguagem são chamadas ou de Hashes Map ou Dicionários.
  O Hash funciona como no Array, ou seja, é uma variável que guarda mais de um valor,
  e com isso conseguimos criar listas.

  No Array quando colocamos valores, cada valor tem sua posição na lista começando em 0.
  Quando procuramos algo dentro desse array, o programa percorre a lista inteira ate achar
  esse índice.
  Exemplo:

=end

lista = Array.new
lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p lista[9]

=begin
  A impressão foi o numero 10, porque o primeiro índice/posição é 0 e não 1.
  Para trazer esse numero o código percorreu todo o array vendo um por um dos índice/posição até achar
  o índice/posição 9.

  Com o hash não funciona assim. Ele vai exatamente no índice informado, portanto uma busca mais rápida.

  As formas de se iniciar um has é:
  escreva o nome do hash, sinal de igual e abre e fecha chaves.
  ou
  escreva o nome do hash, sem espaço entre o nome digite um ponto e escreva new.

	O primeiro é o que se recomenda usar.

=end

hash = {}
p hash.class

hash = Hash.new # lembre-se que dessa forma a palavra hash após o = é com a primeira em maiúscula.
p hash.class

=begin
  Enquanto que no array os valor são inserido e ficam nos indices, no Hash os valores são 
  colocados dentro da chave e funciona como um simbolo que carrega esse valor, ou seja, 
  onde estiver o simbolo sabemos que lá esta o valor que foi associado a ele.

  No contexto de um hash em Ruby, a chave é um valor que é usado para identificar e acessar
  o valor correspondente no hash. Cada chave é única dentro do hash, o que significa que você
  pode ter apenas um valor associado a uma chave específica em um determinado momento.

  A chave pode ser de qualquer tipo, incluindo uma string, um símbolo ou um objeto.
  No entanto, é importante notar que a maneira como a chave é definida pode afetar o desempenho
  do hash. Em geral, é recomendável usar símbolos como chaves sempre que possível,
  pois eles são mais eficientes em termos de desempenho em comparação com as strings.
  
  Para inserir valor dentro do hash se faz:
  1º nome da variável que recebe os valores
  2º sinal de igual
  3º Abre e fecha chave -> {}
  4º escreve o nome da chave ou simbolo
  5º sinal de igual + o sinal de maior de atribuição
  6º o valor
  Exemplo:
   
  hash = { chave => valor }

  ou 

  1º nome da variável que recebe os valores
  2º abre e fecha colchetes com a chave dentro
  3º sinal de igual
  4º valor
  exemplo:

  hash [chave] = valor

  Em resumo, a chave é a peça fundamental que permite o armazenamento e acesso eficiente de dados
  em um hash em Ruby.

=end

h = {:nome => 'William', :idade => 15} # com o simbolo carregando o valor ao invés de string
                                          # evita possíveis conflitos.

=begin
  Perceba que este novo hash é chamado de h, e simplesmente escrevi o nome a comecei a
  por os valores.
  Esa também é uma forma de iniciar o hahs, porém é melhor inicia-lo primeiro, e na
  outra linha associar os valores as chaves.

  Perceba também que este exemplo acima tomando o nome e a idade, faz lembrar de um cadastro.
  É muito util usar o hash para uma situação assim e definir os símbolos que representam os
  valores desejados com o nome apropriado.

  Pode se colocar vários valores e chaves dentro do hash separando-os com vírgula (,).
                         
	                             Forma correta de se fazer chave e valor.

  Na criação dos símbolos usa-se dois pontos (:) a frente do seu nome.
  Porém em hash a criação dos símbolos deve usar primeiro o nome depois os (:)
  e o simbolo => pode ser retirado porque os : servem como atribuição.

  Exeplo:

=end

h2 = {}
h2 = { nome: 'William', idade: 15,
		rg: 234_567_89, cpf: 987_654_32
     } # simbolo em hash com : a frente do nome.
puts " As chaves e valore deste hash são #{h2}"

=begin

  A impressão fica:
  As chaves e valore deste hash são {:nome=>"William", :idade=>15 }
  Perceba que na impressão os símbolos são mostrados com : a frente dos nomes e mostra também =>

                                Métodos .key e .values
  Os métodos .key e .value são métodos que podem ser usados para acessar as chaves e valores
  em um hash em Ruby.
  exemplo:

=end


p h2.key(15) # vc passa o valor e o retorno é a chave :idade, é como se estivesse perguntado:
             # No hash h2 qual é o nome da chave desse valor?

p h2.values # aqui mostra os valores de h2 -> ["William", 15, 23456789, 98765432]s

p h2.values_at(:rg) # _at trás apenas um valor de uma chave especificada no parâmetro.

=begin
  
  Observação: 
  O método .key só aceita um argumento, ou seja, mostra apenas a chave de um valor passado

  Para ver valores específicos, precisa usar o _at a frente da palavra values e passar a chave
  especifica para o valor desejado. E quando passar a chave, essa deve ser passada com os : a frente
  do nome.

	                          Acessando um valor especifico do hash

  Além dos métodos acima descritos: .key, .values e .values_at sobre uma investigação de chave e valor
  podemos acessar um valor específico no hash de varias formas dependendo de sua estrutura:

=end

# obtendo por meio de uma variável
acessando_hash = h2[:nome]
puts acessando_hash # retorna William

# usando o método .fetch  vc passa a chave e após ela um valor padrão, se a chave não tiver nada
# o valor padrão assume o lugar.


