=begin
Este método transferir em ContaBancaria, recebe o Objeto instanciado pessoa2 valor_transferir está sendo redefinido para receber o valor de transferencia
=end

# Esta classe trata de cobrar uma taxa de transferencia
class ContaComTaxa < ContaBancaria
  def transferir (pessoa2, valor_taxa) # 
	debitar(2)
	super(pessoa2, valor_taxa)
  end
end
