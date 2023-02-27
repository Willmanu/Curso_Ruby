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

Dentro da classe criamos uma ação para o objeto.
recebe o nome e imprimi na tela
fora da classe temos a variável objeto que recebe a classe com a ação, e assim criamos
o objeto Cumprimento na memória.
Depois o objeto chama o método e recebe por parâmetro o nome.

=end
