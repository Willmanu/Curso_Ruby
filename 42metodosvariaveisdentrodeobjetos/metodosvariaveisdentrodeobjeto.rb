=begin
                               Métodos e variáveis dentro de objetos

Neste exemplo vamos criar um objeto que comprimente uma pessoa.
O propósito é passar o nome de uma pessoa e gerar o Ola! nomepessoa.
=end

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
Se quisermos acessar esse valor passado para essa classe, em outra classe, precisamos
criar um método que deixa esse valor acessível para todos os objetos que quisermos.


           Criando um método que faz a variável ser acessada em todos os objetos.


=end