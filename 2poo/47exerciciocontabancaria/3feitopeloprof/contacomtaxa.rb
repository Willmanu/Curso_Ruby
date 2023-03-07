=begin
 Lembre-se que os valores de conta_william vieram para cá, quando ContaComTaxa foi instanciado
 na memória
 Quando conta_william chama o método transferir, é passado por parâmetro o objeto conta_pessoa2
 com seus atributos que são nome da conta que vai receber a transferencia e o valor que este tem
 em conta, e o atributo de conta_william que é o valor a ser transferido de 50 reais

 Aqui este método transferir levas esse valores para ContaBancaria
veja lá.

 para cá e cai em pessoa2 e valor_transferencia
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
