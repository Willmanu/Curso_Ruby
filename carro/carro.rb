# recebe atributos e imprimi
class Carro
  def initialize(modelo, ano, dono)
    @modelo = modelo
    @ano = ano
    @dono = dono
  end

  def carro
    p "O modelo é:#{@modelo}, o ano é:#{@ano}, o dono é:#{@dono}"
  end
end
