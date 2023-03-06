require '/home/william/workspace/estudoruby/Curso_Ruby/2poo/47exerciciocontabancaria/1contabancaria/contabancaria'

# Classe que gera um valor ao transferir dinheiro
class CobrancaAoTransferir < ContaBancaria
  def initialize
    @cobranca = ''
    super
  end

  def cobrancaaotransferir
    dadospessoais
    @cobranca = @valortransferir * 0.01.to_f
    puts "O valo de #{@valortransferir}\n de transferência para a conta #{@contadestino}\n"\
    " foi feito por #{@nome}\n que tem como agencia #{@agencia} e conta #{@conta}"
  end
end

cobrancaaotransferir = CobrancaAoTransferir.new
cobrancaaotransferir.cobrancaaotransferir
