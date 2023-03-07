=begin
Este método transferir em ContaBancaria, recebe o Objeto instanciado conta_pessoa2 e o valor de
transferencia do William, que está em valor_transferencia.
Esse valores foram passados para ContaBancaria pela classe principal

Aqui o objetivo desta classe ContaComTaxa, é redefinir o método transferir
O método transferir aqui recebe os mesmo valores que ContaBancaria recebeu: conta_pessoa2 e
o valor_transferencia
O super trás o mesmo comportamento da classe pai ContaBancaria
Definindo Super na primeira linha do método, o programa trás aqui os valores que fores feitos
na classe ContaBancaria, ou seja, o resultado de ContaBancaria classe pai está aqui.
O método debitar é chamado e leva o valor de 2 reais que é a taxa a ser cobrado.
Quando chega em ContaBancaria o valor inicial ja está com o debito do valor_transferir, e desse
valor debitado retira a taxa que é 2 reais.

=end

# Esta classe trata de cobrar uma taxa de transferencia
class ContaComTaxa < ContaBancaria
  def transferir(pessoa2, valor_transferencia)
    if saldo >= valor_transferencia
      super(pessoa2, valor_transferencia)
      debitar(2)
    end
  end
end
