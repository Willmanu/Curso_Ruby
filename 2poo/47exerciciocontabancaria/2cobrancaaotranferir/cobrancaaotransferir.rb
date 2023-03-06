require './2poo/47exerciciocontabancaria/1contabancaria/contabancaria'

# Classe que gera um valor ao transferir dinheiro
class CobrancaAoTransferir < ContaBancaria
  def cobrancaaotransferir
    ContaBancaria.new
    ContaBancaria.dadospessoais
  end
end

cobrancaaotransferir = CobrancaAoTransferir.new
cobrancaaotransferir.cobrancaaotransferir
