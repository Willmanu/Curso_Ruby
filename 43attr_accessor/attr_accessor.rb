=begin

                                         attr_accessor
Este método cria automaticamente os métodos getter e setter.
Isso significa que posso acessar e atribuir valores, a variável que recebeu parâmetros dentro
da classe, usando esse método sem ter que definir os métodos getter e setter manualmente como
fiz anteriormente no 42.
Exemplo abaixo de estrutura anterior

# classe serve para dizer ola ao usuário
class Ola
  def initialize(nome)  
    @nome = nome        
  end

  def ola
    puts "Ola!#{@nome}"
  end

  def nome              aqui temos o getter que retorna o valor dentro da classe, que foi
    @nome               passado em parâmetro para dentro da classe.
  end

  def nome= (new_name)  aqui é o setter que recebe o novo valor e seta em @nome
    @nome = new_name    assim fica valendo esse novo valor em toda classe e outras classe.
  end

end

pessoa = Ola.new('William')    o primeiro valor passado
pessoa.ola                     aqui é a impressão do primeiro valor
pessoa.nome= 'Nathan'          aqui é o novo valor que chama o metodo setter
pessoa.ola                     aqui é a impressão do novo valor


	                             Usando o attr_accessor
Exemplo:

=end

# usando o método attr_accessor
class Ola
  attr_accessor :nome

  def initialize(nome)
    @nome = nome
  end

  def ola
    puts "Ola!#{@nome}"
  end
end

pessoa = Ola.new('William')
pessoa.ola # a impressão aqui é William

pessoa.nome= 'Nathan'
pessoa.ola # a impressão aqui é Nathan
puts pessoa.nome # Nathan

=begin

Perceba nesta classe a diferença da anterior, como ficou o getter e setter em uma só linha
no incio da classe.

Na antepenúltima linha temos o novo valor que o setter vai levar para dentro da classe que é
Nathan
Na penúltima linha chamo o método ola para imprimir o valor
E na última linha tem o getter, ou seja, chamo o método nome que está em attr_accessor.

Resumo:
com o attr_accessor o código fica pequeno, mais limpo e mais visível.
Melhor usar o attr_accessor do que fazer dois métodos como getter e setter. 
=end

