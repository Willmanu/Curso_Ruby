# Classe modelo conta bancária
class ContaBancaria
  def initialize(proprietario, valorinicial)
    @proprietario = proprietario # William
    @valorinicial = valorinicial # 100
  end

  def transferir(pessoa2, valor_transferencia)
    # logica de transferencia

    if @valorinicial >= valor_transferencia # vendo se tem saldo para transferencia
      # consigo
      debitar(valor_transferencia)
      pessoa2.creditar(valor_transferencia)
    else
      # não faz nada
      puts 'Saldo insuficiente! Por favor verifique o valor em sua conta'
      puts "Você está tentando transferi #{valor_transferencia}, porém em sua conta tem #{saldo}"
    end
  end

  def saldo
    @valorinicial
  end

  def debitar(valor_para_debitar)
    @valorinicial -= valor_para_debitar
  end

  private :debitar

  def creditar(valor_para_creditar)
    @valorinicial += valor_para_creditar
  end

  protected :creditar
end

=begin

Quando os atributos de conta_william e o objeto conta_pessoa2 entra aqui em ContaBancaria o
método initialize cria as variáveis de objeto (as que estão com o @) e recebe o proprietario
da ContaComTaxa que é o William e o valor inicial que ten em conta, que vieram para cá como
parâmetro

O método transferir recebe o objeto conta_pessoa2 com os seus atributos que é: a pessoa que vai
receber a transferencia e o valor que ela tem em conta. Ele recebe também o valor de transferencia

1º o método transferir verifica se o valor que o william tem na conta é maior ou igual ao
valor_transferencia passados por parâmetro


=end