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



=end
