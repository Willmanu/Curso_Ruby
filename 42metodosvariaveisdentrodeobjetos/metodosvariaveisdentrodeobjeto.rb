=begin
                               Métodos e variáveis dentro de objetos

Neste exemplo vamos criar um objeto que cumprimenta uma pessoa.
O propósito é passar o nome de uma pessoa e gerar o Ola! nomepessoa.
=end

# classe que gera o cumprimento
class Cumprimentar

  def imprimir_ola(nome)

    puts "Olá! #{nome}"

  end

end

objeto = Cumprimentar.new
objeto.imprimir_ola('William')

=begin

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

pessoa = Cumprimentar3.new
pessoa.imprimir_ola3('Emanuel')