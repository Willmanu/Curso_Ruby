require '/home/william/workspace/estudoruby/Curso_Ruby/2poo/47exerciciocontabancaria/1contabancaria/contabancaria'

# Classe que gera um valor ao transferir dinheiro
class CobrancaAoTransferir < ContaBancaria
  def initialize
    @cobranca = ''
    super
  end

  def dadospessoais
    @cobranca = @valortransferir * 0.01.to_f
    puts "O valo de #{@valortransferir} de transferência para a conta#{@contadestino}"\
    " foi feito por #{@nome} que tem como agencia #{@agencia} e conta #{@conta}"
    super
  end
end

cobrancaaotransferir = CobrancaAoTransferir.new
cobrancaaotransferir.dadospessoais
