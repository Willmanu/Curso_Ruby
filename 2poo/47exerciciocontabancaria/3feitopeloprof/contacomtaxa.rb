=begin
Este método transferir em ContaBancaria, recebe o Objeto instanciado conta_pessoa2 e o valor de
transferencia do William, que está em valor_transferencia.
Esse valores foram passados para ContaBancaria pela classe principal

Aqui o objetivo desta classe é redefinir o método transferir
O método transferir aqui recebe os mesmo valores de que Contabancaria recebeu: conta_pessoa2 e
o valor_transferencia
O super trás o mesmo comportamento da classe pai ContaBancaria
Definindo Super na primeira linha do método

com os mesmo pegando o valor_transferencia da
classe ContaBancaria que vem da principal, e usar o método debitar para retirar o valor da taxa
do valor que o william tem.
=end

# Esta classe trata de cobrar uma taxa de transferencia
class ContaComTaxa < ContaBancaria
  def transferir (pessoa2, valor_transferencia)
    super(pessoa2, valor_transferencia)
    debitar(2)
  end
end
