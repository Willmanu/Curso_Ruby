=begin
                               Métodos e variáveis dentro de objetos
Sabemos que Atributos são as características do objeto e Métodos são as ações do objeto.
Variáveis por assim dizer, carregam os atributos até os métodos para sua manipulação
O nome pode ser um atributo de uma pessoa por exemplo. E através de um método podemos manipula-lo para
um fim.
Como exemplo vamos criar um objeto que cumprimenta uma pessoa.
O propósito é passar o nome(atributo) de uma pessoa e gerar um cumprimento para essa pessoa reconhecida
por seu nome.
=end

# classe que gera o cumprimento
class Cumprimentar

  def imprimir_ola(nome)

    puts "Olá! #{nome}"

  end

end

objeto = Cumprimentar.new
objeto.imprimir_ola('William') # o ponto antes do nome representa uma chamada para o método
                               # ou seja, chamando imprimir_ola para executar sua ação.
=begin

Antes da classe temos um comentário. Esse comentário faz parte da convenção ruby, para explicar esse
método. É obrigatório.

Dentro da classe criamos uma ação, através do método, para o objeto: recebe o nome e imprimi na tela
Fora da classe temos a variável objeto que recebe a classe com com o .new
O método .new é o responsável por criar e inicializar a classe na memória, ou seja, inicializar é
fazer valer tudo que está escrito dentro da classe que a varável objeto recebe. Objeto está recebendo
atributos e métodos que vão funcionar, entrar em atividade quando chamados.
Agora que o objeto está inicializado, podemos chamar a função imprimir_ola e passar o nome da pessoa
que vai ser cumprimentada.
É isso que objeto.imprimir_ola('William') significa


                             Ciclo de vida do parâmetro passado
O valor que foi passado  em parâmetro para o método imprimir_ola só funciona dentro deste
método.
Dentro da classe, fora desse método imprimir_ola, se precisarmos deste valor passado em parâmetro,
em outro lugar dentro da classe, não conseguiremos acessar.


             Definido uma variável que fica disponível em todo ciclo de vida do objeto.

Para usarmos uma variável dentro da classe, em todos os métodos que existirem dentro da classe
enquanto o objeto estiver vivo na memória, usamos o arroba -> @, ou seja, a variável tem que
ser definida com o arroba antes de seu nome.
Exemplo:

@nome

=end

# Classe responsável por cumprimentar uma pessoa pelo nome.
# @nome recebe o valor que nome recebeu. Esta @nome pode ser usada em toda a classe
class Cumprimentar2
  def imprimir_ola2(nome)
    @nome = nome
    puts "Olá! #{@nome}"
  end
end

objeto2 = Cumprimentar2.new
objeto2.imprimir_ola2('William')

=begin

Perceba que antes do método puts foi colocado o @nome recebendo o valor em parâmetro.
Dessa forma este valor que está agora em @nome pode ser usado em qualquer lugar
dentro da classe.

                                          Initialize
Se quisermos acessar esse valor passado para essa classe, em outra classe, não será possível.
Para isso precisamos criar um método chamado Initialize.
Com esse método é possível acessar um valor de uma variável em qualquer outro objeto.

Initialize é um método construtor.Ele pega os valores passados dentro do método/função e cria
objetos, ou seja, constrói com essas partes que recebeu em parâmetro, objetos que podem ser
usados em qualquer outro objeto diferente.
Ele inicializa os valores, ou seja, deixa enxergáveis os valores passado em parâmetro, para outros
objetos usarem.
Sem ele os outros objetos não enxergão esses valores e assim não podem usar.

1º declarar a classe
2º fazer o método construtor, para inicializar os valores passados em parâmetro, e assim esses valor
vão ficar disponíveis para serem usados em outros objetos.
3º fazer o método que imprimi olá!
4º o parametro agora é passado quando usar o .new e não mais na hora de chamar o método
5º chama o método sem passar parâmetro
Exemplo:

=end

# adicionando initialize
class Cumprimentar3

  # initialize seta(defini) a variável de instancia
  def initialize(nomepessoa)
    @nomepessoa = nomepessoa
  end

  # não precisa passar o parâmetro porque temos o initialize
  def imprimir_ola3
    puts "Olá! #{@nomepessoa}"
  end
end

pessoa = Cumprimentar3.new('Emanuel')
pessoa.imprimir_ola3

=begin

A primeira coisa que fiz dentro da classe foi fazer o construtor que recebe o valor do parâmetro
e @nomepessoa recebe este valor. Assim o valor passado por parâmetro pode ser usado em qualquer
objeto.
Perceba que no método imprimir_ola3, não foi necessário ter um parâmetro porque o valor que este
trabalho vem do método initialize.
Quando instancio o objeto em pessoa = Cumprimentar3.new('Emanuel'), o valor é passado aqui.
Por fim o objeto pessoa chama a função para imprimir e esta pega o valor a ser impresso do initialize

                         Trocar o valor que foi passado como parâmetro
Se for necessário trocar o valor passado como parâmetro, usamos o getter e setter.

getter e setter são métodos que manipulam valores dentro de uma classe.
getter significa obter, pegar
setter significa definir para um novo
Com getter se obtém um valor e com o setter se defini um valor novo.

O getter é um método que paga o valor passado em parametro dentro da classe
e retorna este valor
Setter pega um novo valor fora da classe, leva para dentro da classe e o define
como novo valor dentro da classe.

=end

# Criando nesta classe o getter e setter
class Cumprimentar4
  def initialize(nomepessoa2)
    @nomepessoa2 = nomepessoa2
  end

  # método que retorna o valor que foi passado no parâmetro
  def imprimir_ola4
    puts "Olá! #{@nomepessoa2}"
  end

  # este é o getter
  def nome
    @nomepessoa2
  end

  # este é o setter
  def nome=(new_name)
    @nomepessoa2 = new_name
  end
end

pessoa2 = Cumprimentar4.new('Milena')
pessoa2.imprimir_ola4 # o que é impresso aqui é Milena

=begin

Acima tenho:
O getter é o método nome
O setter que defini um novo valor, que é representado com o 'nome=(new_name)'

O que esta sendo impresso acima é Milena, ou seja, o valor passado no parâmetro.
Veja o exemplo abaixo para fazer a troca.
Exemplo:

=end

pessoa2.nome = 'Emile'
pessoa2.imprimir_ola4 # Olá! Emile
puts pessoa2.nome # getter retornando o valor que está dentro da classe -> Emile

=begin

Percebe que com o objeto pessoa2 eu chamo o método .nome= e seto(defino) o valor 'Emile'
antes tinha Milena e agora o setter troca para Emile.
Logo após uso o objeto pessoa2 para chamar o método imprimir_ola4 e tenho a resposta
Olá! Emile

por ultimo chamo o getter, ou seja, peço a impressão do método chamado nome que retorna
o valor que tem em @nomepessoa2

Resumo:
getter retorna o valor passado em parâmetro e setter defini um novo valor
=end
