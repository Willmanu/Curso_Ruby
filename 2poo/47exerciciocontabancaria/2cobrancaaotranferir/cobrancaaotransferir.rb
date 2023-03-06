require '/home/william/workspace/estudoruby/Curso_Ruby/2poo/47exerciciocontabancaria/1contabancaria/contabancaria'

# Classe que gera um valor ao transferir dinheiro
class CobrancaAoTransferir < ContaBancaria
  def cobrancaaotransferir
    contabancaria = ContaBancaria.new
    contabancaria.dadospessoais
  end
end

cobrancaaotransferir = CobrancaAoTransferir.new
cobrancaaotransferir.cobrancaaotransferir
