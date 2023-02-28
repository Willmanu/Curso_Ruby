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

Dentro da classe criamos uma ação para o objeto: recebe o nome e imprimi na tela
fora da classe temos a variável objeto que recebe a classe com a ação, e assim criamos
o objeto Cumprimento na memória.
Depois o objeto chama o método e recebe por parâmetro o nome.
Valida o código e imprime: Olá! mundo.

                             Ciclo de vida do parâmetro passado
O valor que foi passado  em parâmetro para o método imprimir_ola só funciona dentro deste
método.
Dentro da classe, fora desse método, se precisarmos deste valor passado em parâmetro, em outro
lugar dentro da classe, não conseguiremos acessar.



             Definido uma variável que fica disponível em todo ciclo de vida do objeto.

Para usarmos uma variável dentro da classe, em todos os métodos que existirem dentro da classe
enquanto o objeto estiver vivo na memória, usamos o arroba -> @, ou seja, a variável tem que
ser definida com o arroba.
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
Ele inicializa os valores, ou seja, deixa enxergáveis os valores para outros objetos usarem.
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
    @nome = nomepessoa
  end

  # não precisa passar o parâmetro porque temos o initialize
  def imprimir_ola3
    puts "Olá! #{@nome}"
  end
end

pessoa = Cumprimentar3.new
pessoa.imprimir_ola3('Emanuel')