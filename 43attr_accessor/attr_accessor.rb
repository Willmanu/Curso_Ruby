=begin

                                         attr_accessor
Este método cria automaticamente os métodos getter e setter.
Isso significa que posso acessar e atribuir valores, a variável que recebeu parâmetros dentro
da classe, usando esse método sem ter que definir os métodos getter e setter manualmente como
fiz anteriormente no 42.
Exemplo abaixo de estrutura anterior

# classe serve para dizer ola ao usuário
class Ola
  def initialize(nome)  aqui podemos dizer que serve com getter
    @nome = nome        porque pega o valor e inicializa. Mas esse é o construtor.
  end

  def ola
    puts "Ola!#{@nome}"
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


