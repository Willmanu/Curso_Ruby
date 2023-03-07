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
