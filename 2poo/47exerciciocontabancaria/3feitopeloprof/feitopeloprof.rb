# Classe modelo conta bancária
class ContaBancaria
  def initialize(proprietario, valorinicial)
    @proprietario = proprietario # William
    @valorinicial = valorinicial # 100
  end

  def transferir(pessoa2, valor_transferencia)
    #logica de transferencia

    if @valorinicial >= valor_transferencia # vendo se tem saldo para transferencia
      #consigo
	else
		# não faz nada
	end
  end

  def saldo
    @valorinicial
  end
end
