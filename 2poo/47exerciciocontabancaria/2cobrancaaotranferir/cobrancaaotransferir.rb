require './2poo/47exerciciocontabancaria/contabancaria'

# Classe que gera um valor ao transferir dinheiro
class CobrancaAoTransferir < ContaBancaria
  def cobrancaaotransferir
    ContaBancaria.new
	puts 'Insira seus nome,agencia e nº de conta'
    ContaBancaria.dadospessoais.gets()
	('William P. Silva', '1', '001')
    ContaBancaria.contatransferir('006', 1250)
  end
end